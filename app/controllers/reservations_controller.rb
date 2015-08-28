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
    check_in_data = reservation_params[:check_in].split("/").map { |e| e.to_i }
    check_out_data = reservation_params[:check_out].split("/").map { |e| e.to_i }
    @reservation = Reservation.new({
          check_in: Date.new(check_in_data[2],check_in_data[0],check_in_data[1]),
          check_out: Date.new(check_out_data[2],check_out_data[0],check_out_data[1]),
          user_id: current_user.id,
          hero_id: @hero.id
      })
    @reservation.save ? (redirect_to hero_reservation_path(@reservation.hero_id, @reservation.id)) : (render 'heros/show')
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
