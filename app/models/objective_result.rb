class ObjectiveResult < ActiveRecord::Base
  belongs_to :objective
  belongs_to :assessment
  belongs_to :student, :class_name => User
  belongs_to :mastery_category

  attr_accessible :comment, :score, :objective_id, :assessment_id, :student_id
end
