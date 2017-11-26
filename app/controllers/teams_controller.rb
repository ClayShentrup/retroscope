class TeamsController < ApiController
  def index
    render(json: Team.all)
  end

  def show
    render(
      json: Team.find(params.require(:id)),
      include: params.require(:include)
    )
  end
end
