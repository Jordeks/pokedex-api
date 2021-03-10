# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jordan = User.create(username: "Jordles", password: "password")
meks = User.create(username: "Meks", password: "password")

bulbasaur = Pokemon.create(name: "bulbasaur", p_id: 1)
ivysaur = Pokemon.create(name: "ivysaur", p_id: 2)
venusaur = Pokemon.create(name: "venusaur", p_id: 3)


jordan.pokemons << bulbasaur
jordan.pokemons << ivysaur

meks.pokemons << ivysaur
meks.pokemons << venusaur