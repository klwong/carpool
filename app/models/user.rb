class User < ActiveRecord::Base
  attr_accessible :name, :contact, :provider, :uid, :years_experience
  
  has_many :events
  has_many :invitations
  has_many :passengers

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.name = auth['info']['name']
    end

  end
end
