Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  # resources :expenditures
  # resources :groups
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #  root "splash#index"
  root "groups#index"
   resources :users, only: [:index]
    resources :groups, only: [:index, :show, :edit, :update, :destroy]
     resources :expenditures, only: [:index, :show, :edit, :update, :destroy]
end
