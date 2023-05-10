Rails.application.routes.draw do

  root 'home#index'

  get '/contact', to: 'contacts#index'

  get '/team', to: 'teams#index'

  get '/welcome/:first_name', to: 'welcome#show'
  
  get 'gossips/:id', to: 'gossips#show', as: 'gossip'

  resources :gossips, only: [:index, :show, :create, :new]

  resources :users, only: [:show]

end
