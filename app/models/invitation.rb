class Invitation < ActiveRecord::Base
  attr_accessible :event_id, :type, :user_id
  
  belongs_to :event
  belongs_to :user
end
