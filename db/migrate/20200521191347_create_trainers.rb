class CreateTrainers < ActiveRecord::Migration[6.0]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :home_region
      t.boolean :team_member_status
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
