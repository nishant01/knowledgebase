class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description
      t.integer :is_live

      t.timestamps
    end
  end
end
