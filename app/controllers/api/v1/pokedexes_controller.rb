class Api::V1::PokedexesController < ApplicationController

  def create
    caught_pokemon = Pokemon.find_or_create_by(name: params[:name], p_id: params[:p_id])

    if !!caught_pokemon
      pokedex = current_user.pokedexes.build(pokemon_id: caught_pokemon.id)
      if pokedex.save 
        pokemons = current_user.pokemons
        render json: pokemons, status: 200
      else
        response = {
          error: pokedex.errors.full_messages.to_sentence
        }
        render json: response, status: :unprocessable_entity
      end
    else
      response = {
        error: caught_pokemon.errors.full_messages.to_sentence
      }
      render json: response, status: :unprocessable_entity
    end
  end

  def destroy
    pokedex = Pokedex.find_by(id: params[:id])
    if pokedex.destroy 
      render json: current_user.pokemons
    else
      response = { error: "Could not delete"}
      render json: response, status: :unprocessable_entity
    end
  end

end
