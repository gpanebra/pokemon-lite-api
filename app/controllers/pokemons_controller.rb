class PokemonsController < ApplicationController
  def index
    render json: Pokemon.all
  end

  def show
  end

  def create
    @pokemon = Pokemon.new(company_params)
    if @pokemon.save
      render json: @pokemon
    else
      render json: @pokemon.errors
    end
  end

  def update
    @pokemon = Pokemon.find(params[:id])
    if @pokemon.update(params.require(:pokemon).permit!)
      render json: @pokemon
    else
      render json: @pokemon.errors, status: :unprocessable_entity 
    end
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy 
    head :no_content 
  end

  private

  def company_params
    params.require(:pokemon).permit(:name, :base_experience, :main_type, :main_ability)
  end
end
