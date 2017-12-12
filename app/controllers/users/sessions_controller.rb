class Users::SessionsController < Devise::SessionsController
  respond_to(:json)

  def create
    super do |user|
      user.update!(authentication_token: Devise.friendly_token)
    end
  end

  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:notice, :signed_in)
    sign_in(resource_name, resource)
    resource.update!(authentication_token: Devise.friendly_token)
    render(json: resource.slice(:authentication_token, :email))
  end
end
