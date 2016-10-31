class PokemonController < ApplicationController

require 'rest-client'

@base_url = 'http://pokeapi.co/api/v2/pokemon/'

  def search(num)
    response = RestClient.get(@base_url + num)
    poke_info = PokemonAdaptor.new(response)
    byebug
  end


end
