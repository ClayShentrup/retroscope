class ApiController < ApplicationController
  respond_to(:json_api)
  acts_as_token_authentication_handler_for(User)
end
