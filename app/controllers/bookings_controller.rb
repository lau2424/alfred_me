class BookingsController < ApplicationController

  def index
    @user = current_user
    
  end

  def new
    @booking = Booking.new
    @butler = Butler.find(params[:butler_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @butler = Butler.find(params[:butler_id])
    @booking.butler = @butler
    @user = current_user
    @booking.user = @user
    if @booking.save
      redirect_to butlers_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to butlers_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :butler_id)
  end
end
