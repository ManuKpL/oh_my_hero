class HerosController < ApplicationController
  before_action :set_hero, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def index # query result
    # needs to validate address, time-
    @heros = Hero.near(params[:search][:address], 10)
  end

  def show
    @reservation = Reservation.new
  end

  def new
    @hero = Hero.new(heros_params)
  end

  def create # not tested at all
    @hero = Hero.new(heros_params)
    @hero.save ? (redirect_to hero_path(@hero)) : (render 'heros/new')
  end

  # We will see about edit, update and destroy later

  # edit will be on user/show

  # def update
  # end

  # def destroy
  # end

  private

  def set_hero
    @hero = Hero.find(params[:id])
  end

  # strong params method
  def heros_params
    params.require(:hero).permit(:id, :name, :address, :description, :price, :user_id)
  end
end
