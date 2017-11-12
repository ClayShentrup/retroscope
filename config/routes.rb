Rails.application.routes.draw do
  resources :whiteboard_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount_ember_app(:frontend, to: '/')

  resources(:whiteboard_items)
end
