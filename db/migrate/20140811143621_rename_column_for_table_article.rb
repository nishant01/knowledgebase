class RenameColumnForTableArticle < ActiveRecord::Migration
  def up
    rename_column :articles, :type, :article_type
  end

  def down
  end
end
