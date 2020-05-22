class BattleRecordsController < ApplicationController
  def index
  end

  def show
    trainer = Trainer.find(params[:id])
    render json: { wins: trainer.wins, losses: trainer.losses }
  end

  # def create
  # end

  def update
  end

  # reset to 0
  def destroy
  end
end
