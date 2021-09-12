class ApplicationController < ActionController::Base
	before_action :authenticate_user!

	def authenticate_user!
    authenticate_or_request_with_http_token do |token, _options|
      user_id = JwtAuthenticatorService.get_user_id_from_token!(token)
      user = User.find(user_id)
      sign_in user, store: false
    rescue JWT::VerificationError, JWT::DecodeError, ActiveRecord::RecordNotFound
      render json: { error: 'The user is not valid' }, status: 401
    end
  end
end
