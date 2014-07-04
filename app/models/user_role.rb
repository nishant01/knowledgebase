class UserRole < ActiveRecord::Base
    attr_accessible :role_id, :user_id
    belongs_to :user, :foreign_key => 'user_id', :class_name => 'User'
    belongs_to :role, :foreign_key => 'role_id', :class_name => 'Role'
end
