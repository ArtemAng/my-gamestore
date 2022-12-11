class CreatePermitions < ActiveRecord::Migration[7.0]
  def change
    create_table :permitions do |t|
      t.references :role, null: false, foreign_key: true
      t.boolean :can_lock_user
      t.boolean :can_edit_role
      t.boolean :can_edit_game
      t.boolean :can_edit_categories

      t.timestamps
    end
  end
end
