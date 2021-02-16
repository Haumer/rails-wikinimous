Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # VERB "/path", to: "controller#action"

  # get "/", to: "articles#index"
  root to: "articles#index"

  resources :articles, except: [ :index ]
end
