class TeamsController < ApiController
  def index
    render(json: Team.all)
  end

  def show
    render(
      include: params.require(:include),
      json: Team.find(params.require(:id)),
    )
  end

  def archive_active_meeting
    team = Team.find(params.require(:id))
    ActiveRecord::Base.transaction do
      archived_meeting = ArchivedMeeting.create!(team: team)
      team.action_items.done.find_each do |action_item|
        action_item.update!(meeting: archived_meeting)
      end
      team.whiteboard_items.find_each do |whiteboard_item|
        whiteboard_item.update!(meeting: archived_meeting)
      end
    end
    respond_with(team)
  end
end
