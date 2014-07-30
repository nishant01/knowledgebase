class Category < ActiveRecord::Base
  attr_accessible :description, :is_live, :title
    has_many :sub_category
end
