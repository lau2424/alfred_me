class ReviewtablesController < ApplicationController
  def new
    @butler = Butler.find(params[:butler_id])
    @review = Reviewtable.new

  end

  def create
    @butler = Butler.find(params[:butler_id])
    @user = current_user
    @review = Reviewtable.new(review_params)
    @review.user = @user
    @review.butler = @butler
    if @review.save
      redirect_to butler_path(@butler)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Reviewtable.find(params[:id])
    @review.destroy
    redirect_to butler_path(@review.butler), status: :see_other
  end

  private

  def review_params
    params.require(:reviewtable).permit(:content, :rating)
  end
end
