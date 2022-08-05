class StepsController < ApplicationController
  require 'fedex'
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
        filename: "tmp/#{order.id}label.pdf",
        shipper: shipper,
        recipient: recipient,
        packages: packages,
        service_type: 'FEDEX_GROUND',
        shipping_options: shipping_options
      )
      document = Document.create({ name: 'label.pdf', order_id: order.id })
      if document
        # document.file = label.file_name
        document.file.attach(
          io: File.open("#{label.file_name}"),
          filename: label.file_name,
          content_type: 'application/pdf'
        )
        document.save!
        order.tracking_number = label.tracking_number
        order.save!
        return true
      else
        render json: { message: 'Failed to create PDF document' }
      end
      # pp(label)
      puts label.tracking_number
      puts label.file_name
    else
      render json: { message: "Error Order Number doesn't exist" }
    end
  end

  def update
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    if payload
      user = User.find(payload['user_id'])
      if user.is_admin
        order = Order.find(params[:order_id])
        if order
          step = order.steps.where(id: params[:step_id])[0]
          p step
          if step
            case step.index
            when 1
              if fedex_ship(order.id)
                step.completed = !step.completed
                step.save
                OrderMailer.with(user: order.user, order: order).order_update.deliver_later
                render json: step
              else
                render json: { message: 'Failed to Generate Label Try Again' }
              end
            when 2
              # email for step 2
              step.completed = !step.completed
              step.save
              OrderMailer.with(user: order.user, order: order).order_update.deliver_later
              render json: step
            when 3
              # email for step 3
              step.completed = !step.completed
              step.save
              OrderMailer.with(user: order.user, order: order).order_update.deliver_later
              render json: step
            when 4
              # email for step 4
              step.completed = !step.completed
              step.save
              OrderMailer.with(user: order.user, order: order).order_update.deliver_later
              render json: step
            when 5
              # email for step 5
              step.completed = !step.completed
              step.save
              OrderMailer.with(user: order.user, order: order).order_update.deliver_later
              render json: step
            end
          else
            render json: { message: 'Incorrect or Invalid step_id' }
          end
        else
          render json: { message: 'Incorrect or Invalid order_id' }
        end
      else
        render json: { message: 'Unauthorized Route' }
      end

    else
      render json: { message: 'Missing Token' }
    end
  end
end
