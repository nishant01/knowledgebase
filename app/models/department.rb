class Department < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :users
end
