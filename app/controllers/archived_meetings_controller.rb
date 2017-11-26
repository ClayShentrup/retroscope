class ArchivedMeetingsController < ApiController
  def show
    respond_with(ArchivedMeeting.find(params.require(:id)))
  end
end
