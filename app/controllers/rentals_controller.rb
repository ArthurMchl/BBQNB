class RentalsController < ApplicationController
  def new
    @barbecue = Barbecue.find(params[:barbecue_id])
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @barbecue = Barbecue.find(params[:barbecue_id])
    @rental.barbecue = @barbecue
    if @rental.save
      redirect_to barbecue_rental_path(@barbecue)
    else
      render :new
    end
  end

  def index
  end

  def show
  end

  def destroy
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :barbecue_id)
  end
end
