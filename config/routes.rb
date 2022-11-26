Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  # Defines the root path route ("/")
     root "splash#index"
   resources :users, only: [:index]
    resources :groups
     resources :expenditures
end
