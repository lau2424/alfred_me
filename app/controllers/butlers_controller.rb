class ButlersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @butlers = Butler.all
  end
  def show
    @butler = Butler.find(params[:id])
  end

  def new
    @butler = Butler.new
  end

  def create
    @butler = Restaurant.new(butler_params)
    if @butler.save
      #redirect_to ******_path(@butler)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def destroy
  end

  private

  def butler_params
    params.require(:butler).permit(:first_name, :last_name, :address, :category, :gender, :description, :price, :url)
  end
end
