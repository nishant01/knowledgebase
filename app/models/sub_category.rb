class SubCategory < ActiveRecord::Base
  attr_accessible :category_id, :description, :is_live, :sub_category_id, :title
    belongs_to :category
end
