class BarbecuesController < ApplicationController
  def index
    #p params
    # if !params.nil?
    #   @barbecues = Barbecue.where(location: params[:query])
    # else
      @barbecues = Barbecue.all
    #end
    # p "========="
    #  p @barbecues
  end

  def new
    @barbecue = Barbecue.new
  end

  def create
    @barbecue = Barbecue.new(barbecue_params)
    if @barbecue.save
      redirect_to barbecue_path(@barbecue)
    else
      render :new
    end
  end

  def show
    @barbecue = Barbecue.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @barbecue = Barbecue.find(params[:id])
    @barbecue.destroy
    redirect_to barbecues_path
  end

  private

  def barbecue_params
    params.require(:barbecue).permit(:name, :category, :photo)
  end
end
