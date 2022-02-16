Rails.application.routes.default_url_options[:host] = 'https://localhost:3000'
Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "links#index"
  resources :links, only: [:index]
  get '/s/:slug', to: 'links#show', as: :short
  get '/redirect/:slug', to: 'redirect#show', as: :redirect
end
