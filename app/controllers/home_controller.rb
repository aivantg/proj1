class HomeController < ApplicationController

  def index
    trainerless_pokemon = Pokemon.where(trainer: nil)
    @pokemon = trainerless_pokemon.sample
  end

  def capture
    pokemon = params[:id]
    puts pokemon
    Pokemon.update(pokemon, :trainer => Trainer.where(id: current_trainer).first)
    redirect_to '/'
  end

end
