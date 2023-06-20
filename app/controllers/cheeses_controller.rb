class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses, only[:id, :name], methods[:sumary]
  end

  # GET /cheeses/:id
  def show

    cheese = Cheese.find_by(id: params[:id])
    if cheese
     render json: cheese
    else
      render json: {error: "cheese not found"}, status: :not_found
    end
  end

end