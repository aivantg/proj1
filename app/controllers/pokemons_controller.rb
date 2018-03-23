class PokemonsController < ApplicationController

  def new
    @pokemon = Pokemon.new
  end

  def create
    pokemon = Pokemon.create(pokemon_params)
    pokemon.level = 1
    pokemon.health = 100
    pokemon.trainer = current_trainer
    if pokemon.save
      flash[:notice] = "Successfully added #{pokemon.name} to your party!"
      redirect_to "/trainers/#{current_trainer.id}"
    else
      flash[:error] = pokemon.errors.full_messages.to_sentence
      redirect_to action: "new"
    end
  end

  def pokemon_params
    params.require(:pokemon).permit(:name, :ndex)
  end
end
