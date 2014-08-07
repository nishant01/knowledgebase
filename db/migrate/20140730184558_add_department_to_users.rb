class AddDepartmentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :department_id, :integer, null: false, default: 0
  end
end
