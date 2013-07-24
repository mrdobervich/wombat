class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  validates :course, presence: true

  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :course_id
  has_many :completed_tasks
  has_many :tasks, :through => :completed_tasks
  has_many :completed_assignments
  has_many :assignments, :through => :completed_assignments

  belongs_to :course
end
