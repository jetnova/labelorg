Rails.application.routes.draw do
  devise_for :users

  resources :record_labels, only: %i[show edit update] do
    resources :releases
    resources :playlists
  end

  devise_scope :user do
    authenticated :user do
      root 'record_labels#show', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
