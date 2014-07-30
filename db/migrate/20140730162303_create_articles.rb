class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|

        t.string  :summary,       null: false
        t.text    :description,   null: false
        t.text    :resolution,    null: false
        t.string  :notes,         null: true
        t.string  :attachment_path
        t.string  :type
        t.integer :ref_article_id
        t.integer :user_id,       null: false
        t.integer :is_approved,   null: false, default: 0
        t.integer :category_id
        t.integer :sub_category_id
        t.integer :is_alive
        t.integer  :approved_by_user_id
        t.timestamps
    end
  end
end
