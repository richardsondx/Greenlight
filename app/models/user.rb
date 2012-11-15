class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :name, :oauth_expire_at, :oauth_token, :profile_id, :type
end
