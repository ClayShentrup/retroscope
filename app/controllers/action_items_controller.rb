class ActionItemsController < ApiController
  before_action(:load_action_item, only: %i[destroy show update])

  def create
    action_item = ActionItem.create(action_item_params)
    respond_with(action_item)
  end

  def update
    @action_item.update(action_item_params)
    respond_with(@action_item)
  end

  def destroy
    @action_item.destroy
    respond_with(@action_item)
  end

  def index
    action_items = ActionItem.all
    respond_with(action_items)
  end

  def show
    respond_with(@action_item)
  end

  private

  def load_action_item
    @action_item = ActionItem.find(params.require(:id))
  end

  def action_item_params
    ActiveModelSerializers::Deserialization.jsonapi_parse(
      params,
      only: %i[content meeting done],
      polymorphic: %i[meeting],
    )
      .merge(author: current_user)
      .tap do |params|
        # https://github.com/rails-api/active_model_serializers/pull/1615/files#r152492860
        params[:meeting_type] = params.fetch(:meeting_type).underscore.classify
      end
  end
end
