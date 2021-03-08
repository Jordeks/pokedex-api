class Api::V1::PokemonsController < ApplicationController

  def index
    render json: Pokemon.all, status: 200
  end
  
end
