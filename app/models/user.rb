class User < ActiveRecord::Base
  has_many :reservations
  has_many :heros

  validates_presence_of :name, :email, :password, :phone_number
  validates :email, format: { with: /\A\w+\.?\w+@[a-z]+\.[a-z]{2,3}\z/ }
  validates :phone_number, format: { with: /\A(((00|\+)33)|0)\s?\d(\s?(\d){2}){4}\z/ }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
