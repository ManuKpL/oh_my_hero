class HerosController < ApplicationController

  def index # query result
    # need to validate city
    #  migrate to add column address to hero
    @heros = Hero.where("id")
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
