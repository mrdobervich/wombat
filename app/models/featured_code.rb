class FeaturedCode < ActiveRecord::Base
  belongs_to :course

  attr_accessible :author, :code, :short_task_description, :task_description, :title, :course_id
end
