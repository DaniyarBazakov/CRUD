class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :Name
      t.string :Type_1
      t.string :Type_2
      t.integer :Total
      t.integer :HP
      t.integer :Attack
      t.integer :Defence
      t.integer :Sp_Atk
      t.integer :Sp_Def
      t.integer :Speed
      t.integer :Generation
      t.boolean :Legendary

      t.timestamps
    end
  end
end
