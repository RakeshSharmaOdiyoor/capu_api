class JwtAuthenticatorService
  def initialize(user, expire_in = Devise.remember_for.from_now.to_i)
    @user = user
    @expire_in = expire_in
  end

  # raises JWT::VerificationError if token invalid
  def self.get_user_id_from_token!(token)
    verified_token = JWT.decode(token, ENV['JWT_SECRET'], true, algorithm: 'HS512')
    verified_token[0]['sub']
  end

  def create_token
    data = { email: @user.email }
    payload = { data: data, sub: @user.id, exp: @expire_in }
    JWT.encode(payload, ENV['JWT_SECRET'], 'HS512')
  end
end
