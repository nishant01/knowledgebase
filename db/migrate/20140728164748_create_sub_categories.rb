class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.string :title
      t.text :description
      t.integer :is_live
      t.integer :category_id
      t.integer :sub_category_id

      t.timestamps
    end
  end
end
