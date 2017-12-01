class WhiteboardItemsController < ApiController
  def create
    whiteboard_item = WhiteboardItem.create(whiteboard_item_params)
    respond_with(whiteboard_item)
  end

  def destroy
    WhiteboardItem.destroy(params.require(:id))
  end

  def index
    whiteboard_items = WhiteboardItem.all
    respond_with(whiteboard_items)
  end

  def show
    respond_with(WhiteboardItem.find(params.require(:id)))
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
