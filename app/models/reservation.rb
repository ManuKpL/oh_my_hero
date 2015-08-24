class Reservation < ActiveRecord::Base
  belongs_to :hero
  belongs_to :customer, class_name: "User", foreign_key: :user_id

  before_create :check_for_availability

  validates_presence_of :check_in, :check_out, :hero_id, :customer_id

  private

  def check_for_availability

  end
end
