class ReviewsController < ApplicationController
    def create
        token = request.headers['Authentication'].split(' ')[1] 
        payload = decode(token) 
        user = User.find(payload['user_id'])
        if user
            review = create(rating_params)
            if review
                render json: review
            else
                render json: { message: "Failed to create review "}
            end
        else
            render json: {message: "Invalid or Expired Token"}
        end
    end
    def admin_delete
        token = request.headers['Authentication'].split(' ')[1] 
        payload = decode(token) 
        user = User.find(payload['user_id'])
        if user.is_admin
            review = Review.find(params[:review_id])
            if review
                review.destroy
                render json: review
            else
                render json: {message: "Missing or Incorrect Review Id"}
            end
        else
            render json: {message:"Unauthorized route"}
        end
    end
    def admin_edit
        token = request.headers['Authentication'].split(' ')[1] 
        payload = decode(token) 
        user = User.find(payload['user_id'])
        if user.is_admin
            review = Review.find(params[:review_id])
            if review
                review.comment = params[:comment]
                review.rating = params[:rating]
                review.save!
                render json: review
            else
                render json: {message: "Missing or Incorrect Review Id"}
            end
        else
            render json: {message:"Unauthorized route"}
        end
    end
    private 

    def rating_params
        params.permit(:rating, :comment, :user_id)
    end
end
