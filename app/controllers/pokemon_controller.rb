class PokemonController < ApplicationController

  def new
    @pokemon = Pokemon.new
    session[:poke_id] << @pokemon.num
  end

  def show
    @captured = session[:poke_id]

    if Pokemon.new.catch
      @caught = true
    else
      @captured.pop
      @caught = false
    end

  end
end
