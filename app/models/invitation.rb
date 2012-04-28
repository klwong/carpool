class Invitation < ActiveRecord::Base
  attr_accessible :event_id, :type, :user_id
end
