class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def new
    @plan = Plan.find(params[:plan_id])
    @booking = Booking.new()
  end

  def create
    @plan = Plan.find(params[:plan_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.plan = @plan
    if @booking.save
      redirect_to plan_bookings_path
    else
      render :new
    end
  end

  def confirmed
    #TODO
  end

  private
  def booking_params
    params.require(:booking).permit(:confirmed)
  end
end

