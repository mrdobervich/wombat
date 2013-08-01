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

  def final_completed_tasks
    self.tasks.order("created_at DESC").group_by {|t| t.id }.map { |k, v| v.first }
  end

  def assignments
    self.course.assignments if self.course
  end

  def all_completed_assignments 
    self.completed_assignments.order("created_at DESC")
  end

  def assignments_completed
    self.final_completed_assignments.map { |a| a.assignment }.reject { |a| a.nil? }
  end

  def final_completed_assignments 
    self.all_completed_assignments.group_by {|t| t.assignment_id } .map { |k, v| v.first }
  end

  def late_completed_assignments
    self.final_completed_assignments.select { |a| a.assignment && a.assignment.due_date < a.created_at }
  end

  def assignments_missing
    self.course.assignments.reject { |a| self.assignments_completed.include?(a) }
  end

end
