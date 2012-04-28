class User < ActiveRecord::Base
  attr_accessible :contact, :provider, :uid, :years_experience
  
  has_many :events
  has_many :invitations
  has_many :passengers
end
