class TrainersController < ApplicationController
  def index
    @trainers = Trainer.all
    render json: @trainers
  end

  def show
    @trainer = Trainer.find(params[:id])
    render json: @trainer 
  end

  def create
    @trainer = Trainer.new(trainer_params)
    if @trainer.save
      render json: @trainer
    else
      render json: @trainer.errors
    end
  end

  def update
  end

  def destroy
    @trainer = Trainer.find(params[:id])
    @trainer.destroy 
    head :no_content
  end

  private

  def trainer_params
    params.require(:trainer).permit(:name, :gender, :age, :home_region, :team_member_status, :wins, :losses)
  end
end
