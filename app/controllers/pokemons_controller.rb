class PokemonsController < ApplicationController
  def index
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy 
    head :no_content 
  end
end
