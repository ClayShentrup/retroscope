require 'rails_helper'

RSpec.describe(ActionItemsController) do
  let!(:action_item) { create(:action_item) }

  login_user

  describe('PUT #update') do
    let(:params) do
      {
        data: {
            id: action_item,
            attributes: {
                content: "foo",
                done: true,
            },
            type: 'action-items',
        },
        id: action_item.id,
      }
    end

    specify do
      put(:update, format: :jsonapi, params: params)
      expect(action_item.reload).to have_attributes(done: true)
    end
  end

end
