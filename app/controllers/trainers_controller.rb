class TrainersController < ApplicationController
  before_action :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
    @pokemons = @trainer.pokemons
    @is_current = @trainer.id == current_trainer.id
  end

  def attack
    puts "Attacking Pokemon: " + params[:id]
    pokemon = Pokemon.find(params[:id])
    if pokemon.health <= 10
      Pokemon.destroy(pokemon.id)
    else
      Pokemon.update(pokemon.id, :health => (pokemon.health - 10))
    end
    redirect_to action: "show", id: current_trainer.id
  end

end
