class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string  :name,  null: false
      t.text  :description
      t.integer :manager_id, null: false
      t.integer :is_alive, null: false, default: true


      t.timestamps
    end
  end
end
