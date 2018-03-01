class PlansController < ApplicationController
  # nadia coded: index and show
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    #almu
    if params[:query].present?
      sql_query = "title ILIKE :query OR location ILIKE :query"
      @plans = Plan.where(sql_query, query: "%#{params[:query]}%")
    else
      @plans = Plan.all
    end

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

  #Aron coded "edit", "update" and "destroy" methods
  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])
    @plan.update(plan_params)
    redirect_to plan_path(@plan) => "Your post has been successfully updated"
  end

  def destroy
    @plan = Plan.find(params[:id])
    @plan.destroy
    redirect_to plans_path(@plan) => "Your plan has been successfully destroyed"
  end


  private
  def plan_params
    params.require(:plan).permit(:title, :description, :location, :price, :picture)
  end

end
