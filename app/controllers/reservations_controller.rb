class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :update, :validate]
  before_action :set_hero, only: [:show, :update, :create]

  def index
    @reservations = User.find(params[:user_id]).reservations
  end

  def show
    @user = current_user
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.hero = @hero
    @reservation.save ? (redirect_to hero_reservation_path(@reservation)) : (render 'heros/show')
  end

  def update
    @reservation.update(reservation_params) ? (redirect_to hero_reservation_path(@reservation)) : (render :show)
  end

  def validate
    @reservation.validated = true
    @reservation.save
    redirect_to hero_reservation_path(params[:hero_id], @reservation.id)
  end

  private

  def set_hero
    @hero = Hero.find(params[:hero_id])
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:check_in, :check_out, :hero_id, :user_id)
  end
end
