class RoleRole < ActiveRecord::Base
  attr_accessible :parent_id, :role_id
  belongs_to :parent, :foreign_key => 'parent_id', :class_name => 'Role'
  belongs_to :child, :foreign_key => 'role_id', :class_name => 'Role'
end
