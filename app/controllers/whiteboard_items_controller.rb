class WhiteboardItemsController < ApplicationController
  respond_to(:json_api)

  def index
    respond_with(WhiteboardItem.all)
  end

  def create
    whiteboard_item = WhiteboardItem.create(whiteboard_item_params)
    respond_with(whiteboard_item)
  end

  private

  def whiteboard_item_params
    params.require(:data).require(:attributes).permit(:content)
  end
end
