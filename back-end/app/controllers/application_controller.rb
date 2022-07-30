class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  require 'jwt'
  require 'easypost'
  require 'open-uri'
  require 'fedex'

  EasyPost.api_key = 'EZTK190799a6ed8a41d483565831b0fe1cfdqFYaBUuIfKNtHPGne8p8SQ'
  # secret_key = Rails.application.credentials.dig(:jwt_key)
  def secret_key
    'my$ecretK3y'
  end

  def encode(payload)
    JWT.encode(payload, secret_key, 'HS256')
  end

  def decode(token)
    JWT.decode(token, secret_key, true, { algorithm: 'HS256' })[0]
  rescue StandardError
    puts 'FAILED'
  end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      # session[:user_id] = user.id
      payload = { "exp": Time.now.to_i + 2.week, 'user_id': user.id }
      p payload
      token = encode(payload)
      p token
      # result = serialize(user, UserSerializer).
      # merge(serialize(token, UserSerializer))
      # include: { posts: {include: { comments: {only: :body } },only: :title } }
      x = user.as_json(only: %i[id full_name email company street1 street2 city state zip phone
                                is_admin])
      render json: { user: x, token: token }

    else
      render json: {
        message: 'Incorrect Username/Password',
        authenticated: false
      }
    end
  end

  def create_label(order_id)
    order = Order.find(order_id)
    if order
      user = order.user
      from_address = EasyPost::Address.create(
        name: user.full_name,
        company: user.company,
        street1: user.street1,
        street2: user.street2,
        city: user.city,
        state: user.state,
        zip: user.zip,
        phone: user.phone
      )
      to_address = EasyPost::Address.create(
        company: 'Das Incentives LLC',
        street1: '2381 McDonald Ave',
        street2: '',
        city: 'Brooklyn',
        state: 'NY',
        zip: '11223',
        phone: '347-713-6585'
      )
      parcel = EasyPost::Parcel.create(
        length: 9,
        width: 6,
        height: 2,
        weight: 10
      )
      shipment = EasyPost::Shipment.create(
        to_address: to_address,
        from_address: from_address,
        parcel: parcel
      )
      shipment.buy(
        rate: shipment.lowest_rate(carriers = ['FEDEX'], services = ['
              FEDEX_EXPRESS_SAVER'])
      )
      shipment.label(file_format: 'PDF')
      url = shipment.postage_label.label_pdf_url
      tracking_code = shipment.tracking_code
      order.tracking_number = tracking_code
      order.save
      filename = File.basename(URI.parse(url).path)
      file = URI.open(url)
      document = Document.create({ name: 'label.pdf', order_id: order.id })
      if document
        document.file.attach(io: file, filename: filename, content_type: 'application/pdf')
        # render json: document
      else
        render json: { message: 'Failed to create PDF document' }
      end
    else
      render json: { message: "Error Order Number doesn't exist" }
    end
  end

  def fedex_ship(order_id)
    order = Order.find(order_id)
    if order
      user = order.user
      shipper = {
        name: user.full_name,
        company: user.company,
        phone_number: user.phone,
        address: user.street1,
        city: user.city,
        state: user.state,
        postal_code: user.zip,
        country_code: 'US'
      }
      recipient = {
        name: 'Das',
        company: 'Das Incentives LLC',
        phone_number: '347-713-6585',
        address: '2381 McDonald Ave',
        city: 'Brooklyn',
        state: 'NY',
        postal_code: '11223',
        country_code: 'US',
        residential: 'false'
      }
      packages = []
      packages << {
        weight: { units: 'LB', value: 2 },
        dimensions: { length: 10, width: 5, height: 4, units: 'IN' }
      }
      shipping_options = {
        packaging_type: 'YOUR_PACKAGING',
        drop_off_type: 'REGULAR_PICKUP'
      }

      fedex = Fedex::Shipment.new(
        key: '7UStEH63csm0zCNX',
        password: 'bdou7u9DOiXGZjtykAm4dvJZB',
        account_number: '510087860',
        meter: '119289334',
        mode: 'development'
      )
      label = fedex.label(
        filename: "labels/#{order.id}label.pdf",
        shipper: shipper,
        recipient: recipient,
        packages: packages,
        service_type: 'FEDEX_GROUND',
        shipping_options: shipping_options
      )

      # pp(label)
      puts label.tracking_number
      puts label.file_name
    else
      render json: { message: "Error Order Number doesn't exist" }
    end
  end
end
