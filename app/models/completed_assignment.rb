class CompletedAssignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :completed_task
  belongs_to :assignment
  attr_accessible :user_id, :completed_task_id, :assignment_id

end
