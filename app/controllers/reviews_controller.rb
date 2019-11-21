class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @barbecue = Barbecue.find(params[:barbecue_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @barbecue = Barbecue.find(params[:barbecue_id])
    @review.barbecue = @barbecue
    if @review.save
      redirect_to barbecue_path(@barbecue)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
