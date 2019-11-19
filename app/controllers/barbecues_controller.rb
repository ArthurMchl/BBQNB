class BarbecuesController < ApplicationController
  def index
    p params
    if !params.nil?
      @barbecues = Barbecue.where(location: params[:query])
    else
      @barbecues = Barbecue.all
    end
    p "========="
    p @barbecues
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
