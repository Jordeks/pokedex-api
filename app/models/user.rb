class User < ApplicationRecord
  has_secure_password

  has_many :pokedexes
  has_many :pokemons, through: :pokedexes

  validates :username, presence: true
  validates :username, uniqueness: true
end
