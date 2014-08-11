class Article < ActiveRecord::Base
   attr_accessible :summary, :description, :resolution, :article_type, :category_id, :ref_article_id, :notes, :attachment_path
    belongs_to :user
    belongs_to :category
end
