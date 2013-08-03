class Assessment < ActiveRecord::Base
  has_one :grader, :class_name => "User"
  belongs_to :student, :class_name => "User"
  belongs_to :completed_assignment

  has_one :assignment, through: :completed_assignment

  attr_accessible :comment, :official
end
