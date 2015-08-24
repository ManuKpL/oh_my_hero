class User < ActiveRecord::Base
  has_many :reservations
  has_many :heros

  validates_presence_of :name, :email, :password, :phone_number, :address
end
