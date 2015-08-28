  class HerosController < ApplicationController
  before_action :set_hero, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def index # query result
    # needs to validate address, time-availability
    params? ? (@heros = select_heros) : (@heros = Hero.all)
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
  end

  def destroy
    @hero.destroy
    redirect_to current_user_path(current_user)
  end

  private

  def params?
    params[:search]
  end

  def set_hero
    @hero = Hero.find(params[:id])
  end

  # Selection method for search in home >> heros index
  def select_heros
    (search_params[:address] == "") ? (heros_locate = Hero.all) : (heros_locate = Hero.near(search_params[:address], 10))
    (search_params[:skill] == "") ? (heros_locate_and_skill = hero_locate) : (heros_locate_and_skill = heros_locate.where(skill: search_params[:skill]))
    (search_params[:check_in] == "") ? (check_in_data = [1,1,3000]) : (check_in_data = search_params[:check_in].split("/").map { |e| e.to_i })
    (search_params[:check_out] == "") ? (check_out_data = [1,1,3000]) : (check_out_data = search_params[:check_out].split("/").map { |e| e.to_i })
    heros = []
    heros_locate_and_skill.each do |hero|
      heros << hero if Reservation.new({
          check_in: Date.new(check_in_data[2],check_in_data[0],check_in_data[1]),
          check_out: Date.new(check_out_data[2],check_out_data[0],check_out_data[1]),
          user_id: 1,
          hero_id: hero.id
        }).valid?
    end
    return heros
  end

  # strong params hero
  def hero_params
    params.require(:hero).permit(:id, :name, :address, :description, :price, :skill, :picture, :user_id)
  end

  # strong params search
  def search_params
    params.require(:search).permit(:address, :check_in, :check_out, :skill)
  end
end
