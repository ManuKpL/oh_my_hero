class Hero < ActiveRecord::Base
  belongs_to :owner, class_name: "User", foreign_key: :user_id
  has_many :reservations

  has_attached_file :picture,
    styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }

  validates_presence_of :name, :description, :price, :user_id
  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
end
