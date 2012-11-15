class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :name, :oauth_expire_at, :oauth_token, :profile_id, :type

  TYPE = %[organizer student]

  def self.from_omniauth(auth)
  	where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
  		user.provider = auth.provider
  		user.uid = auth.uid

  		user.name = auth.info.name
  		user.firstname = auth.info.first_name
  		user.oauth_token = auth.credentials.oauth_token
  		user.oauth_expire_at = Time.at(auth.credentials.exore)
  	end
  end

end
