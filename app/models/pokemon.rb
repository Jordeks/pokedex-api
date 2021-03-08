class Pokemon < ApplicationRecord
    has_many :pokedexes
    has_many :users, through: :pokedexes
end
