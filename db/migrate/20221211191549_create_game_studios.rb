class CreateGameStudios < ActiveRecord::Migration[7.0]
  def change
    create_table :game_studios do |t|
      t.string :name

      t.timestamps
    end
  end
end
