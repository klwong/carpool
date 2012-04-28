class Event < ActiveRecord::Base
  attr_accessible :cost, :from_landmark, :passenger_limit, :plate, :to_landmark, :type, :user_id, :vehicle, :when
  
  belongs_to :user
  has_many :passengers
  has_many :routes
  has_many :invitations
end
