class UsersController < ApiController
  def show
    respond_with(User.find(params.require(:id)))
  end
end
