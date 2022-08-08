class DocumentsController < ApplicationController
     def create
        p params
        order_id = params[:order_id].to_i
        order = Order.find(order_id)
        if order 
          file = params[:file]
          doc = Document.create(name: params[:name], order_id: order.id)
          doc.file.attach(io: file, filename: params[:name], content_type: params[:type])
          if doc
            render json: doc
          else
            render json: {message: 'Failed to create Document'}
          end
        else
          render json: {message: "Incorrect Order ID"}
        end
     end
      def destroy
        token = request.headers['Authentication'].split(' ')[1]
        payload = decode(token) 
        if payload
        user = User.find(payload['user_id'])
        if user.is_admin
          doc = Document.find(params[:id])
          if doc
            doc.destroy
            render json: doc
          else
            render json: {message: 'Failed to destroy Document'}
          end
        else
        render json: {message: "Unauthorized Route"}
        end
      else
        render json: {message: 'Missing Token'}
      end
      end
      def doc_params
        params.permit(:name, :order_id,:file)
      end
end
