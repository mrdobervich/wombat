class ObjectiveResult < ActiveRecord::Base
  belongs_to :objective
  belongs_to :assessment
  belongs_to :student, :class_name => "User"
  has_a :mastery_category
  attr_accessible :comment, :score
end
