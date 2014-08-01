class User < ActiveRecord::Base
    has_many :user_roles, :foreign_key => 'user_id', :class_name => 'UserRole'
    has_many :roles, :through => :user_roles
    has_many :articles
    belongs_to :departments
    after_save :check_and_add_manager

    # Include default devise modules. Others available are:
    # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable

    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

    # Setup accessible (or protected) attributes for your model

    attr_accessible :email, :password, :password_confirmation, :remember_me, :role_ids, :name, :surname, :contact,
                    :address,:department_id, :is_manager

    def check_and_add_manager
        if self.is_manager == 1
            dep_manager = DepartmentManager.new
            dep_manager.department_id = self.department_id
            dep_manager.manager_id = self.id
            dep_manager.save
            return true
        else
            return false
        end
    end
end
