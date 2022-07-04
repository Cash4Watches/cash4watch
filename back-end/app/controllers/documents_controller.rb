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
        doc = Document.find(params[:id])
        if doc
            doc.destroy
            render json: doc
        else
            render json: {message: 'Failed to destroy Document'}
        end
      end
      def doc_params
        params.permit(:name, :order_id,:file)
      end
end
