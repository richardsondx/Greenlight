class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :name, 
  				  :oauth_expire_at, :oauth_token, :profile_id,
  				  :account_type, :sign_in_count

  TYPES = ["student", "organization"]

  def self.from_omniauth(auth)
  	where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
  		user.provider = auth.provider
  		user.uid = auth.uid

  		user.name = auth.info.name
  		user.firstname = auth.info.first_name
  		user.lastname = auth.info.last_name

  		user.gender = auth.extra.gender
  		user.email = auth.info.email
  		user.picture = auth.info.image

  		user.oauth_token = auth.credentials.token
  		user.oauth_expire_at = Time.at(auth.credentials.expires_at)

  		user.sign_in_count += 1

  		user.save
  	end
  end

  def self.generate_profile(user)
  	if user.account_type == "student"
  		create_student(user)
  	elsif user.account_type == "organization"
  		create_organization(user)
  	end
  end

  def create_student(user)
  	student = Student.new

  	student.firstname = user.firstname 
  	student.lastname = user.lastname
  	student.fullname = "#{user.firstname} #{user.lastname}"
  	student.user_id = user
  	student.gender = user.gender

  	user.save
  end

  def create_organization(user)
  	organizer = Organization.new

  	organization.name

  	organization.save
  end

end
