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
end
