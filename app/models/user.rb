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
  has_many :assessments
#  has_many :assessments_as_student, :class_name => 'Assessment', :foreign_key => 'student_id'
#  has_many :assessments_as_grader, :class_name => 'Assessment', :foreign_key => 'grader_id'
  has_many :objective_results

  belongs_to :course

  # list of most recently saved completed_tasks for each task id
  # buggy?? does this even work??
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
    self.final_completed_assignments.select{ |a| a.assignment_id == ass_id }.first
  end

  # List of assignments that have been completed
  def assignments_completed
    self.final_completed_assignments.map { |a| a.assignment }.reject { |a| a.nil? }
  end

  # list of most recently submitted completed_assignment for each assignment
  def final_completed_assignments 
    self.all_completed_assignments.select {|a| a.current }
  end

  # all late completed_assignments
  def late_completed_assignments
    self.final_completed_assignments.select { |a| a.assignment && a.assignment.due_date < a.created_at }
  end

  # all late completed_assignments
  def on_time_completed_assignments
    self.final_completed_assignments.reject { |a| a.assignment && a.assignment.due_date < a.created_at }
  end

  # all missing assignments
  def assignments_missing
    self.course.assignments.reject { |a| self.assignments_completed.include?(a) }
  end

  def mastery_category_score(category_id)
    assessment_ids = Assessment.where(:student_id => self.id, :official => true).map { |a| a.id }
    results = ObjectiveResult.find(:all, :conditions => {:mastery_category_id => category_id, :assessment_id => assessment_ids})

    s = results.reduce(0) do |sum, value|       # find the sum
      if (value.score.nil?) 
        value.score = 0 
      end
      sum + value.score
    end
    s.to_f/results.size()                       # divide by # of 
  end

end
