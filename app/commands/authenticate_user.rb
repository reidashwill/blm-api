class AuthenticateUser
  prepend SimpleCommand

  def initialize(email, password)
    @email = email 
    @password = password
  end

  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_accessor :email, :password

  def user
    user = User.find_by_email(email)
    return user if user && user.authenticate(password)

    errors.add :user_authentication, 'invalid credentials'
    nil
  end
end 

# curl -H "Content-Type: application/json" -X POST -d '{"email":"example@mail.com","password":"123123123"}' http://localhost:3000/authenticate