class StepsController < ApplicationController
  def step_1
  	@user = current_user
  end
  def step_2
  	@user = current_user
  	if @user.account_type == "organization"
  		if @user.profile_id.nil?
  			@organization = Organization.where(:user_id => @user).first_or_initialize.tap do |organization|
  				organization.manager = "#{@user.firstname} #{@user.lastname}"
  				organization.save
  			end
  			@user.update_attributes(:profile_id => @organization)
  		else
  			flash[:notice] = "Can't create Organization: Student profile associated with this account already exist"
  		end
  	elsif @user.account_type == "student"
  		if @user.profile_id.nil?
  			@student = Student.where(:user_id => @user).first_or_initialize.tap do |student|
  				student.firstname = @user.firstname
  				student.lastname = @user.lastname
  				student.fullname = @user.name
  				student.gender = @user.gender
  				student.save
  			end
  			@user.update_attributes(:profile_id => @student)
  		else
  			flash[:notice] = "Can't create Student: Organization profile associated with this account already exist"
  		end
  	end
  end
end
