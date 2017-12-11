class Users::RegistrationsController < Devise::RegistrationsController
  respond_to(:json)
  prepend_before_action(
    :require_no_authentication,
    only: %i[new create edit update cancel],
  )
  prepend_before_action(:authenticate_scope!, only: :destroy)
  acts_as_token_authentication_handler_for(User)
  # Switch to next line when ready to allow registration.
  # acts_as_token_authentication_handler_for(User, except: :create)
end
