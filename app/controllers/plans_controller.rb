class PlansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR location ILIKE :query"
      @plans = Plan.where(sql_query, query: "%#{params[:query]}%")
    else
      @plans = Plan.all
    end
  end

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

  def edit
    @plan = Plan.find(params[:id])
  end

def update
  @plan = Plan.find(params[:id])
  if @plan.user != current_user
    flash[:alert] = "You can not edit this plan"
    redirect_to @plan
  else
    if @plan.update(plan_params)
      flash[:alert] = "Your plan has been successfully updated"
      redirect_to @plan
    else
      render :edit
      render json: @plan.errors
    end
  end
end

def destroy
  @plan = Plan.find(params[:id])
  if @plan.user != current_user
    flash[:alert] = "You can not delete this plan"
    redirect_to @plan
  else
    if @plan.destroy
      flash[:alert] = "Your plan has been deleted"
      redirect_to plans_path
    else
      render :show
      render json: @plan.errors
    end
  end
end

  #Aron coded "edit", "update" and "destroy" methods
  # def update
  #   @plan = Plan.find(params[:id])
  #   @plan.update(plan_params)
  #   redirect_to plan_path(@plan) => "Your post has been successfully updated"
  # end

  # def destroy
  #   @plan = Plan.find(params[:id])
  #   @plan.destroy
  #   redirect_to plans_path(@plan) => "Your plan has been successfully destroyed"
  # end


  private

  def plan_params
    params.require(:plan).permit(:title, :description, :location, :price, :picture)
  end

end
