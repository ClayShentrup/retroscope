class Users::SessionsController < Devise::SessionsController
  respond_to(:json)

  def create
    super do |user|
      user.update!(authentication_token: Devise.friendly_token)
    end
  end
end
