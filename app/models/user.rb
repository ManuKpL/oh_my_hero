class User < ActiveRecord::Base
  has_many :reservations, dependent: :destroy
  has_many :heros, dependent: :destroy

  # paperclip atributes
  has_attached_file :picture,
    styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
