class SubmittedAssignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :assignment
  attr_accessible :revision
end
