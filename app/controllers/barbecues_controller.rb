class BarbecuesController < ApplicationController
  def index
    if params[:query].blank?
      @barbecues = Barbecue.all
    else
      @barbecues = Barbecue.where(location: params[:query].downcase.capitalize)
    end
    @barbecues_mapped = Barbecue.geocoded
    @markers = @barbecues_mapped.map do |barbecue|
      {
        lat: barbecue.latitude,
        lng: barbecue.longitude
      }
    end
  end

  def new
    @barbecue = Barbecue.new
  end

  def create
    @barbecue       = Barbecue.new(barbecue_params)
    @barbecue.user  = current_user
    if @barbecue.save
      redirect_to barbecue_path(@barbecue)
    else
      render :new
    end
  end

  def show
    @rental         = Rental.new
    @barbecue       = Barbecue.find(params[:id])
    @rentals        = @barbecue.rentals
    @dates_rentals  = @rentals.map do |rental|
      {
        from: rental.start_date,
        to: rental.end_date
      }
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @barbecue = set_id
    @barbecue.destroy
    redirect_to barbecues_path
  end

  private

  def barbecue_params
    params.require(:barbecue).permit(:name, :category, :description, :price, :location, :photo, :title, :body)
  end

  def set_id
    Barbecue.find(params[:id])
  end
end
