# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.foreach(Rails.root.join('lib/seed_csv/pokemon.csv'), headers: true) do |row|
  Pokemon.create( {
    Name: row["Name"],
    Type_1: row["Type 1"],
    Type_2: row["Type 2"],
    Total: row["Total"],
    HP: row["HP"],
    Attack: row["Attack"],
    Defence: row["Defence"],
    Sp_Atk: row["Sp. Atk"],
    Sp_Def: row["Sp. Def"],
    Speed: row["Speed"],
    Generation: row["Generation"],
    Legendary: row["Legendary"]
  } )
end
