class DocumentsController < ApplicationController
     def create
        doc = Document.create!(doc_params);
        if doc
            render json: doc
        else
            render json: {message: 'Failed to create Document'}
        end
     end
      def destroy
        token = request.headers['Authentication'].split(' ')[1]
        payload = decode(token) 
        if payload['user_id'] == 1
          doc = Document.find(params[:id])
          if doc
            doc.destroy
            render json: doc
          else
            render json: {message: 'Failed to destroy Document'}
          end
        else
        render json: {message: "Unauthorized Action"}
        end
      end
    private
      def doc_params
        params.permit(:name, :order_id,:file)
      end
end
