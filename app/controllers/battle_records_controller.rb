class BattleRecordsController < ApplicationController
  def index
    @trainers = Trainer.all
    render json: { name: @trainers.name, wins: @trainers.wins, losses: @trainers.losses }
  end

  def show
    trainer = Trainer.find(params[:id])
    render json: { wins: trainer.wins, losses: trainer.losses }
  end

  # def create
  # end

  def update
    trainer = Trainer.find(params[:id])
    if trainer.update(params.require(:trainer).permit!)
      render json: { wins: trainer.wins, losses: trainer.losses }
    else
      render json: trainer.errors, status: :unprocessable_entity
    end
  end

  # reset to 0
  def destroy
  end
end
