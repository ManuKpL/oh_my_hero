  class HerosController < ApplicationController
  before_action :set_hero, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def index # query result
    # needs to validate address, time-availability
    @heros = Hero.near(params[:search][:address], 10)
    # Let's DYNAMICALLY build the markers for the view.
    @markers = Gmaps4rails.build_markers(@heros) do |hero, marker|
      marker.lat hero.latitude
      marker.lng hero.longitude
    end
  end

  def show
    @reservation = Reservation.new
    # @alert_message = "You are viewing #{@hero.name}"
    @hero_coordinates = @hero.address
  end

  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.new(hero_params)
    @hero = current_user.heros.build(hero_params)
    @hero.save ? (redirect_to hero_path(@hero)) : (render 'heros/new')
  end

  def edit
  end

  def update
    @hero.update(hero_params)
    redirect_to hero_path(@hero)
  end

  def destroy
    @hero.destroy
    redirect_to user_path(current_user.id)
  end

  private

  def set_hero
    @hero = Hero.find(params[:id])
  end

  # strong params method
  def hero_params
    params.require(:hero).permit(:id, :name, :address, :description, :price, :skill, :picture, :user_id)
  end
end
