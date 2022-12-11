class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.boolean :edit
      t.boolean :read

      t.timestamps
    end
  end
end
