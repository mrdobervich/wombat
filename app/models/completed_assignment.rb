class CompletedAssignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :completed_task
  belongs_to :assignment

  has_many :assessments

  attr_accessible :user_id, :completed_task_id, :assignment_id, :created_at, :current
end
