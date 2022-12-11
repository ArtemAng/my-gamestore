class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.references :category, null: false, foreign_key: true
      t.references :game_studio, null: false, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end
