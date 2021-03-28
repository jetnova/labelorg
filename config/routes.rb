Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :record_labels, except: :index do
    resources :acts
    resources :playlists
    resources :record_deals
    resources :recordings, except: :edit
    resources :releases
  end

  resources :musicians, except: :show
  resources :songs, except: :show

  devise_scope :user do
    authenticated :user do
      root 'record_labels#show', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
