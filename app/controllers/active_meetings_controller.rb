class ActiveMeetingsController < ApplicationController
  def show
    respond_with(
      Team.find_by_name(params.require(:id)),
      serializer: ActiveMeetingSerializer,
    )
  end
end
