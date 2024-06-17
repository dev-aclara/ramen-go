class ProteinsController < ApplicationController
  def index
    @proteins = Protein.all

    render json: @proteins
  end

  private

  def protein_params
    params.require(:protein).permit(:name, :description, :price, :image_active, :image_inactive)
  end
end
