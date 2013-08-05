class MasteryCategory < ActiveRecord::Base
  has_many :objective_results
  has_many :objectives

  attr_accessible :description, :description_link, :name
end
