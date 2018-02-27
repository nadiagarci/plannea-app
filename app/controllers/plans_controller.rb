class PlansController < ApplicationController
  # nadia coded: index and show
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



 # almu coded: new and create
  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.user = current_user
    if @plan.save
      redirect_to plan_path(@plan)
    else
      render :new
    end
  end


  private
  def plan_params
    params.require(:plan).permit(:title, :description, :location, :price, :picture)
  end

end
