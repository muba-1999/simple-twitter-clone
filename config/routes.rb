Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :tweet_clones
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tweet_clones#index"
end
