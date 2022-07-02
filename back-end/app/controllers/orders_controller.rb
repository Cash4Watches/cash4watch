class OrdersController < ApplicationController
    require 'easypost'
    EasyPost.api_key = 'EZTK190799a6ed8a41d483565831b0fe1cfdqFYaBUuIfKNtHPGne8p8SQ'
    def create_label
        fromAddress = EasyPost::Address.create(
            name: params[:name],
            company: params[:company],
            street1: params[:street1],
            street2: params[:street2],
            city: params[:city],
            state: params[:state],
            zip: params[:zip],
            phone: params[:phone]
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
          puts shipment.postage_label.label_pdf_url
## Print Tracking Code
puts shipment.tracking_code
    end
end
