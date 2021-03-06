class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :p_id, :image_url
end
