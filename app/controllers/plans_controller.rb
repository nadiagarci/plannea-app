class PlansController < ApplicationController
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
