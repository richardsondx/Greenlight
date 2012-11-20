class SessionsController < ApplicationController

	def create
		user = User.from_omniauth(env["omniauth.auth"])
		session[:user_id] = user.id

		respond_to do |format|
			if user.account_type.nil?
				format.html { redirect_to steps_step_1_path }
			else
				format.html { redirect_to root_path }
			end
		end
	end

	def destroy
		session[:user_id] = nil

		redirect_to root_path
	end

end