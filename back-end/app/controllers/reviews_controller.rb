class ReviewsController < ApplicationController
    def create
        token = request.headers['Authentication'].split(' ')[1] 
        payload = decode(token) 
        if payload
        user = User.find(payload['user_id'])
        if user
            review = Review.create(comment: params[:comment],user_id: user.id)
            if review
                render json: review
            else
                render json: { message: "Failed to create review "}
            end
        else
            render json: {message: "Invalid or Expired Token"}
        end
    else
        render json: {message: "Missing Token"}
      end
    end
    def admin_delete
        token = request.headers['Authentication'].split(' ')[1] 
        payload = decode(token) 
        if payload
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
    else
        render json: {message: "Missing Token"}
      end
    end
    def admin_show
        token = request.headers['Authentication'].split(' ')[1] 
        payload = decode(token) 
        if payload
            user = User.find(payload['user_id'])
            if user.is_admin
                review = Review.all
                render json: review 
            else
                render json: {message:"Unauthorized route"}
            end
        else
            render json: {message: "Missing Token"}
        end
    end
    def user_reviews
        reviews = Review.all.where(approved: true)
        render json: {Reviews:reviews}
    end
    def admin_approve_review
        token = request.headers['Authentication'].split(' ')[1] 
        payload = decode(token) 
        if payload
            user = User.find(payload['user_id'])
            if user.is_admin
                review = Review.find(params[:review_id])
                if review
                    review.approved = !review.approved
                    if review.save
                        render json: review
                    else
                        render json: {message: "Failed to save Review"}
                    end
                else 
                    render json: {message: "Failed to find Review"}
                end
            else
                render json: {message:"Unauthorized route"}
            end
        else
            render json: {message: "Missing Token"}
        end
    end
end
