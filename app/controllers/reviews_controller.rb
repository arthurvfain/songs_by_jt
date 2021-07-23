class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews
    end

    def create
        newReview = Review.create!(review_params)
            render json: newReview, status: :created
    rescue ActiveRecord::RecordInvalid => e
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end

    private
    
    def review_params
        params.permit(:super_fan_id, :song_id, :rating, :comment)
    end
end
