class ButlersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

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
    @butler = Butler.new(butler_params)
    if @butler.save
      redirect_to butlers_path
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
    params.require(:butler).permit(:first_name, :last_name, :address, :category, :gender, :description, :price, :url, :photo)
  end
end
