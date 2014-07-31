class RemoveManageIdFromDepartments < ActiveRecord::Migration
  def up
    remove_column :departments, :manager_id
  end

  def down
    add_column :departments, :manager_id, :integer
  end
end
