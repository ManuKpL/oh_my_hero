class HerosController < ApplicationController

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
end
