class OrdersController < ApplicationController
    require 'easypost'
    require 'open-uri'
    
    EasyPost.api_key = 'EZTK190799a6ed8a41d483565831b0fe1cfdqFYaBUuIfKNtHPGne8p8SQ'
    def create_label
        order = Order.find(params[:order_id]);
        if order
          user = order.user
          fromAddress = EasyPost::Address.create(
            name: user.full_name,
            company: user.company,
            street1: user.street1,
            street2: user.street2,
            city: user.city,
            state: user.state,
            zip: user.zip,
            phone: user.phone
          )
          toAddress = EasyPost::Address.create(
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
            to_address: toAddress,
            from_address: fromAddress,
            parcel: parcel
          )          
          shipment.buy(
            rate: shipment.lowest_rate(carriers = ['FEDEX'], services = ['
                FEDEX_GROUND'])
          )
          shipment.label(file_format: "PDF")
          url = shipment.postage_label.label_pdf_url
          tracking_code = shipment.tracking_code
          filename = File.basename(URI.parse(url).path)
          file = URI.open(url)
          document = Document.create!({name: "label.pdf",order_id: order.id});
          if document
            document.file.attach(io: file, filename: filename, content_type: 'application/pdf')
            render json: document
          else
            render json: {message: "Failed to create PDF document"}
          end
        else
          render json: {message: "Error Order Number doesn't exist"}
        end
    end
    def create
      token = request.headers['Authentication'].split(' ')[1] 
    payload = decode(token) 
    user = User.find(payload['user_id'])
    if user
      order = Order.create!(order_params);
      if order
          step1 = Step.create!({index: 1,title: "Case Approved",desc: "",completed: false,order_id: order.id})
          step2 = Step.create!({index: 2,title: "Label Generated",desc: "",completed: false,order_id: order.id})
          step3 = Step.create!({index: 3,title: "Watch Received",desc: "",completed: false,order_id: order.id})
          step4 = Step.create!({index: 4,title: "Watch Inspected",desc: "",completed: false,order_id: order.id})
          step5 = Step.create!({index: 5,title: "Watch Sold",desc: "",completed: false,order_id: order.id})
          render json: order
      else
          render json: {message: 'Failed to create Order'}
      end
    else
      render json: {message: "Invalid or expired token"}
    end
   end
   def show
    token = request.headers['Authentication'].split(' ')[1] 
    payload = decode(token) 
    user = User.find(payload['user_id'])
    if user
      order = user.orders.where(id: params[:order_id])
      if order
        render json: order
      else
        render json: {message: "Order not found"}
      end
    else
      render json: { message: "Invalid or Expired Token"}
    end
   end
   private
   def order_params
    params.permit(:brand_name, :model_number, :reference_number, :condition, :previous_service,:previous_polish,:papers,:included_items,:extra_comment,:user_id)
   end
end
