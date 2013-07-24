class Course < ActiveRecord::Base
  attr_accessible :name, :period, :year
  has_many :calendar_entries
  has_many :users
  has_many :assignments

  def full_name
    return self.year.to_s + " " + self.name + " - " + self.period.to_s 
  end

end
