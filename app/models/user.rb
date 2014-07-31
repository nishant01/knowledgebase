class User < ActiveRecord::Base
    has_many :user_roles, :foreign_key => 'user_id', :class_name => 'UserRole'
    has_many :roles, :through => :user_roles
    has_many :articles
    belongs_to :departments

    # Include default devise modules. Others available are:
    # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable

    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

    # Setup accessible (or protected) attributes for your model

    attr_accessible :email, :password, :password_confirmation, :remember_me, :role_ids, :name, :surname, :contact,
                    :address,:department_id
end
