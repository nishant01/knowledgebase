class CreateRolePermissions < ActiveRecord::Migration
  def change
    create_table :role_permissions do |t|
      t.integer :role_id
      t.string :regulator
      t.string :conduct

      t.timestamps
    end
  end
end
