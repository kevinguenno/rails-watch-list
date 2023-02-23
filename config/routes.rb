Rails.application.routes.draw do
  resources :lists do
    resources :bookmarks, only: %i[create]
  end
  resources :bookmarks, only: %i[destroy]
end
