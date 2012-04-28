class Invitation < ActiveRecord::Base
  attr_accessible :event_id, :kind, :user_id
  
  belongs_to :event
  belongs_to :user
end
