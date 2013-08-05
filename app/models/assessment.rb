class Assessment < ActiveRecord::Base
  belongs_to :grader, :class_name => 'User'
  belongs_to :student, :class_name => 'User'
  belongs_to :completed_assignment
  has_one :assignment, through: :completed_assignment

  has_many :objective_results

  attr_accessible :comment, :official, :completed_assignment_id, :grader_id, :student_id
end
