class Task < ActiveRecord::Base
  attr_accessible :difficulty, :long_description, :short_description, :title, :tag_list
  acts_as_taggable
  
  has_many :completed_tasks, dependent: :destroy
  has_many :assignments, dependent: :destroy
  has_many :users, :through => :completed_tasks

  def self.difficulties 
  	@difficulties ||=
  		((self.connection.select_values "select distinct difficulty from tasks").map &:to_i).sort
  end
end
