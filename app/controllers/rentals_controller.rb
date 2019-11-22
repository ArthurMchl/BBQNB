class RentalsController < ApplicationController
  def new
    @barbecue = set_id_barbecue
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @barbecue = set_id_barbecue
    @rental.barbecue = @barbecue
    @rental.user = current_user
    if @rental.save
      redirect_to rental_path(@rental)
    else
      redirect_to barbecue_path(@barbecue)
    end
  end

  def index
  end

  def show
    @rental = Rental.find(params[:id])
  end

  def destroy
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :barbecue_id)
  end

  def set_id_barbecue
    Barbecue.find(params[:barbecue_id])
  end
end
