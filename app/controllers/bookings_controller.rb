class BookingsController < ApplicationController

  def new
    @booking = Booking.new()
  end

  def create
    new_booking = Booking.new(bookings_params)
    new_booking.save
  end

  def confirmed
    #TODO
  end

  private
  def bookings_params
    params.require(:bookings).permit(:confirmed)
  end
end

