Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for(:users, controllers: { sessions: 'users/sessions' })

  scope(:api) do
    resources(:teams, only: %i[index show]) do
      put(:archive_active_meeting, on: :member)
    end

    resources(:action_items, only: %i[create destroy update])
    resources(:whiteboard_items, only: %i[create destroy])
    resources(:archived_meetings, only: :show)
  end

  mount_ember_app(:frontend, to: '/')
end
