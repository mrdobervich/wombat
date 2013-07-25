class Assignment < ActiveRecord::Base
  belongs_to :course
  belongs_to :task

  has_many :completed_assignments, dependent: :destroy

  attr_accessible :category, :description, :title, :task_id, :course_id, :due_date
end

