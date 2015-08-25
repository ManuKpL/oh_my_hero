class ReservationsController < ApplicationController
  before_action :set_hero, only: [:index, :show, :update]

  def index
    @reservations = Reservation.where(hero_id: @hero)
  end

  def show
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.hero = @hero
    @reservation.save ? (redirect_to hero_reservation_path(@reservation)) : (render 'heros/show')
  end

  def update
    @reservation.update(reservation_params) ? (redirect_to hero_reservation_path(@reservation)) : (render :show)
  end

  private

  def set_hero
    @hero = Hero.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:check_in, :check_out, :hero_id, :user_id)
  end
end
