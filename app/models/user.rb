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

  # list of all assignments for this user
  def assignments
    self.course.assignments if self.course
  end

  # List of all completed_assignments
  def all_completed_assignments 
    self.completed_assignments.order("created_at DESC")
  end

  # get most recently completed solution to given assignment
  def assignment_solution(ass_id)
    self.all_completed_assignments.select{ |a| a.assignment_id == ass_id }.first
  end

  # List of assignments that have been completed
  def assignments_completed
    self.final_completed_assignments.map { |a| a.assignment }.reject { |a| a.nil? }
  end

  # list of most recently submitted completed_assignment for each assignment
  def final_completed_assignments 
    self.all_completed_assignments.group_by {|t| t.assignment_id } .map { |k, v| v.first }
  end

  # all late completed_assignments
  def late_completed_assignments
    self.final_completed_assignments.select { |a| a.assignment && a.assignment.due_date < a.created_at }
  end

  # all missing assignments
  def assignments_missing
    self.course.assignments.reject { |a| self.assignments_completed.include?(a) }
  end

end
