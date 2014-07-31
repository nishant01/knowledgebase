class AddIsManagerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_manager, :integer, default: 0
  end
end
