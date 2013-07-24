class CalendarEntry < ActiveRecord::Base
  attr_accessible :body, :course, :date, :title, :course_id
  belongs_to :course
end
