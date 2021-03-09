class Api::V1::PokemonsController < ApplicationController

  def index
    pokemons = current_user.pokemons
    render json: pokemons, status: 200
  end
  
end
