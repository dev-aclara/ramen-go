class BrothsController < ApplicationController
  def index
    @broths = Broth.all

    render json: @broths
  end

  private

  def broth_params
    params.require(:broth).permit(:name, :description, :price, :image_active, :image_inactive)
  end
end
