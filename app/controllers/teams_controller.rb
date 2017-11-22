class TeamsController < ApplicationController
  def show
    render(
      json: Team.find(params.require(:id)),
      include: params.fetch(:include)
    )
  end
end
