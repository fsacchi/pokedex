Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pokemons#index"
  get '/pokemons', to: 'pokemons#index'
  get '/pokemons/:id', to: 'pokemons#show', as: 'details_pokemons'
end
