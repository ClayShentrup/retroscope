Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for(
    :users,
    controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions',
    }
  )

  scope(:api) do
    resources(:action_items, only: %i[create destroy update])
    resources(:archived_meetings, only: :show)

    resources(:teams, only: %i[index show]) do
      put(:archive_active_meeting, on: :member)
    end

    resources(:users, only: :show)

    resources(:whiteboard_items, only: %i[create destroy update])
  end

  mount_ember_app(:frontend, to: '/')
end
