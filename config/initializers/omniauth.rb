OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
	if Rails.env.production?
		# Greenlight
		provider :facebook, '309073735873315', 'ba89368e23f0701c27b909841e4dfe9e',
		:scope => 'email', :display => 'popup'
	else
		# Greenlight-sandbox
		provider :facebook, '389178474491654', 'd44ef5aede3472acecf899d8e7c24435',
	 	:scope => 'email', :display => 'popup'
	end
end

