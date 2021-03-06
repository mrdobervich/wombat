class Objective < ActiveRecord::Base
  belongs_to :assignment
  belongs_to :mastery_category

  has_one :objective_result, dependent: :destroy

  attr_accessible :description, :objective_type, :assignment_id, :mastery_category_id
end
