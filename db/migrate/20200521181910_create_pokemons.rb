class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :base_experience
      t.string :main_type
      t.string :main_ability

      t.timestamps
    end
  end
end
