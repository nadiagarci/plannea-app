class ReviewsController < ApplicationController

  def index
    @review = Review.all
  end

  def new
    @review = Review.new()

  end

  def create
    new_review = Review.new(reviews_params)
    new_review.save
    redirect_to plan_path(@plan)
  end

  def destroy
    @review.destroy
  end

  private
  def reviews_params
    params.require(:reviews).(:title, :description, :rating)
  end
end
