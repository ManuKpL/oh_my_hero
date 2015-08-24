class Hero < ActiveRecord::Base
  belongs_to :owner, class_name: "User", foreign_key: :user_id
  has_many :reservations

  validates_presence_of :name, :description, :price, :user_id
end
