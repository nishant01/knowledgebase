class DepartmentManager < ActiveRecord::Base
  attr_accessible :department_id, :manager_id
end
