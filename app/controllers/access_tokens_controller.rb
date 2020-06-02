class AccessTokensController < ApplicationController
	
	def create
		authenticator = UserAuthenticator.new(params[:code])
		authenticator.perform

		render json: AccessTokenSerializer.new(authenticator.access_token), status: :created 
	end

end
