class User < ActiveRecord::Base
  has_many :reservations
  has_many :heros

  validates_presence_of :name, :email, :password, :phone_number, :address
  validates :email, format: { in: /\A\w+\.?\w+@[a-z]+\.[a-z]{2,3}\z/ }
  validates :phone_number, format: { in: /\A(((00|\+)33)|0)\s?\d(\s?(\d){2}){4}\z/ }
end
