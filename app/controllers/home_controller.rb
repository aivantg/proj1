class HomeController < ApplicationController

  def index
    trainerless_pokemon = Pokemon.where(trainer: nil)
    @pokemon = trainerless_pokemon.sample
  end

  def capture
    pokemon = params[:id]
    Pokemon.update(pokemon, :trainer => current_trainer)
    redirect_to action: "index"
  end

end
