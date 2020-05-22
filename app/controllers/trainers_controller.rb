class TrainersController < ApplicationController
  def index
  end

  def show
    @trainer = Trainer.find(params[:id])L
    render json: @trainer 
  end

  def create    
  end

  def update
  end

  def destroy
    @trainer = Trainer.find(params[:id])
    @trainer.destroy 
    head :no_content
  end
end
