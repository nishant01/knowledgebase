class RolePermission < ActiveRecord::Base
  attr_accessible :conduct, :regulator, :role_id
end
