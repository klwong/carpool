class User < ActiveRecord::Base
  attr_accessible :contact, :provider, :uid, :years_experience
end
