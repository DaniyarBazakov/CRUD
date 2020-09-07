class ChangeDataTypeForLegendary < ActiveRecord::Migration[6.0]
  def change
    change_column :pokemons, :Legendary, :string
  end
end
