class HerosController < ApplicationController
  def index
    @heros = Hero.all
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
