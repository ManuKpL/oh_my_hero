class HerosController < ApplicationController
  before_action :set_hero, only[:show, :edit, :update, :destroy]

  def index # query result
    # needs to validate address, time-availability
    @heros = Hero.where("address = ?", params[:address])
  end

  def show
  end


  def new

  end

  def create
  end


  def edit
  end

  def update
  end

  def destroy
  end


  private

  def set_hero
    @hero = Hero.find(params[:id])
  end

  def heros_params
    params.require(:hero).permit(:address, :id)
  end

  # strong params function
end
