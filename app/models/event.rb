class Event < ActiveRecord::Base
  attr_accessible :cost, :from_landmark, :passenger_limit, :plate, :to_landmark, :type, :user_id, :vehicle, :when
end
