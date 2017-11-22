class WhiteboardItemsController < ApplicationController
  def create
    whiteboard_item = WhiteboardItem.create(whiteboard_item_params)
    respond_with(whiteboard_item)
  end

  def destroy
    whiteboard_item = WhiteboardItem.destroy(params.require(:id))
    respond_with(whiteboard_item)
  end

  private

  def whiteboard_item_params
    ActiveModelSerializers::Deserialization.jsonapi_parse(
      params,
      only: %i[content emotion meeting],
      polymorphic: %i[meeting],
    ).tap do |params|
      # https://github.com/rails-api/active_model_serializers/pull/1615/files#r152492860
      params[:meeting_type] = params.fetch(:meeting_type).underscore.classify
    end
  end
end
