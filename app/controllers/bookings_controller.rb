class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @user = current_user
    @booking = Booking.new(booking_params)
  end

  def create
    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking = Booking.new(booking_params)
    @booking.spaceship_id = @spaceship.id
    @booking.user = current_user
    @booking.total_price = ((@booking.end_date - @booking.start_date).to_i * @spaceship.price)
    if @booking.save
      render :show
    else
      redirect_to spaceship_path(@spaceship)
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_bookings_path(@booking)  
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :spaceship_id)
  end

end
