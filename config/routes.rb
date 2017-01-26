Rails.application.routes.draw do

  devise_for :users

  namespace :api do
    namespace :v1 do
      post :auth, to: "authentication#create"
      resources :snippets
    end
  end

  resources :snippets

  devise_scope :user do
    authenticated :user do
      root 'snippets#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

end
