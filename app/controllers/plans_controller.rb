class PlansController < ApplicationController

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.find(params[:id])
    if @plan.save
      redirect_to plan_path(@plan)
    else
      render :new
  end
end

  def index
    @plans = Plan.all
  end

  # def index
  #   @location = params[:location]
  #   if @location == ""
  #   @plans = Plan.all
  #   else
  #   @plans = Plan.select { |id, r| r[:location] == @location }
  # end

  def show
    @plan = Plan.find(params[:id])
  end


end
