class Route < ActiveRecord::Base
  attr_accessible :city_id, :event_id, :type

  belongs_to :city
  belongs_to :event
end
