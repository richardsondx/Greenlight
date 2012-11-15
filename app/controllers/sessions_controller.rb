class SessionsController < ApplicationController

	def crate
		user = User.from_omniauth(env["omniauth.auth"])
		session[:user_id] = user.id
	end

	def destroy
		session[:user_id] = nil
	end

end