Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for(:users, controllers: { sessions: 'users/sessions' })

  scope(:api) do
    resources(:action_items, only: %i[create destroy update])
    resources(:teams, only: %i[index show])
    resources(:whiteboard_items, only: %i[create destroy])
  end

  mount_ember_app(:frontend, to: '/')
end
