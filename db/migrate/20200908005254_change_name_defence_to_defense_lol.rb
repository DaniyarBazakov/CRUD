class ChangeNameDefenceToDefenseLol < ActiveRecord::Migration[6.0]
  def change
    rename_column :pokemons, :Defence, :Defense
  end
end
