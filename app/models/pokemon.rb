class Pokemon < ApplicationRecord
    has_many :pokedexes
    has_many :users, through: :pokedexes

    validates :name, :p_id, presence: true
    validates :name, :p_id, uniqueness: true
end
