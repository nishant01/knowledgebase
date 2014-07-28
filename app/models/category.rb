class Category < ActiveRecord::Base
  attr_accessible :description, :is_live, :title
end
