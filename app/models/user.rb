class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  # WHY WAS THIS SET IN THE FIRST PLACE?? YARR..
  # validates :course, presence: true

  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :course_id
  has_many :completed_tasks, dependent: :destroy
  has_many :tasks, :through => :completed_tasks
  has_many :completed_assignments

  belongs_to :course
end
