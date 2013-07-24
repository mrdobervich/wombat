class CompletedTask < ActiveRecord::Base
  belongs_to :user
  belongs_to :task

  attr_accessible :revision, :user_id, :task_id, :solution
end
