require 'bcrypt'

module Api
  module V0
    class LoginController < ApplicationController
      skip_before_action :verify_authenticity_token
      skip_before_action :authenticate_user!, only: :create

      def create
        user = User.find_by(email: params[:email].downcase)
        if user && ::BCrypt::Password.new(user.encrypted_password).is_password?(params[:password])
          token = JwtAuthenticatorService.new(user).create_token
          sign_in user, store: false

          render json: { token: token }, status: 201
        else
          render json: { error: 'The email/password combination you entered is incorrect' }, status: 401
        end
      end

      private 
      def user_params
        params.require(:user).permit(:email, :password)
      end
    end
  end
end