Rails.application.routes.draw do
  resource :sessions, only: [:new]
  get '/sign_in', to: 'session#new'
  post '/sign_in', to: 'session#create'
  get '/sign_out', to: 'sessions#destroy'
  root to: "static_pages#landing_page"

  resources :users, only: [:index, :show, :new, :create, :delete]

end
