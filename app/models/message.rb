class Message < ActiveRecord::Base
  belongs_to :user
  attr_accessible :id, :user_id, :body, :from
end
