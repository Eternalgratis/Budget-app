Rails.application.routes.draw do
  devise_for :users
  # authenticated :user do
  #   root 'groups#index', as: :authenticated_root
  # end

  # unauthenticated :user do
  #   root to: 'users#index'
  # end

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  # resources :expenditures
  # resources :groups
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
     root "splash#index"
  #  root "groups#index"
   resources :users, only: [:index]
    resources :groups
     resources :expenditures
end
