class CreateJoinTableTrainerPokemon < ActiveRecord::Migration[6.0]
  def change
    create_join_table :trainers, :pokemons do |t|
      t.index [:trainer_id, :pokemon_id]
      t.index [:pokemon_id, :trainer_id]
    end
  end
end
