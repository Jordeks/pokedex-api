class CreatePokedexes < ActiveRecord::Migration[6.0]
  def change
    create_table :pokedexes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :pokemon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
