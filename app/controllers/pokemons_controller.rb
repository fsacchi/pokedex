class PokemonsController < ApplicationController
  def index
    response = RestClient.get 'https://pokeapi.co/api/v2/pokemon/?limit=151'
    @pokemons = JSON.parse(response.body)['results']
  end

  def show
    id = params[:id]
    response = RestClient.get "https://pokeapi.co/api/v2/pokemon/#{id}"
    @pokemon = JSON.parse(response.body)
  end
end
