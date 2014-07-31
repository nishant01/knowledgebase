class CreateDepartmentManagers < ActiveRecord::Migration
  def change
    create_table :department_managers do |t|
      t.integer :department_id
      t.integer :manager_id

      t.timestamps
    end
  end
end
