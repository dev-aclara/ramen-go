class OrdersController < ApplicationController
  before_action :fetch_broth_and_protein, only: [:create]
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    if @broth.nil? || @protein.nil?
      render json: { error: "both brothId and proteinId are required" }, status: :bad_request
      return
    end

    @order = Order.new(
      broth_id: @broth.id,
      protein_id: @protein.id,
      description: generate_order_description(@broth, @protein),
      image: generate_order_image(@broth, @protein)
    )

    if @order.save
      render json: @order, serializer: OrderSerializer, status: :created
    else
      render json: { error: "could not place order" }, status: :internal_server_error
    end
  end

  private

  def generate_order_description(broth, protein)
    "#{broth.name} and #{protein.name}"
  end

  def generate_order_image(broth, protein)
    "https://example.com/images/#{broth.image_active}"
  end

  def fetch_broth_and_protein
    @broth = Broth.find_by(id: params[:broth_id])
    @protein = Protein.find_by(id: params[:protein_id])
  end
end
