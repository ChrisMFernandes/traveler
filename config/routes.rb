Rails.application.routes.draw do

  root 'home#index'

  get 'home/dashboard' => 'home/dashboard', as: :current_user
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :destinations do 
    resources :albums
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
