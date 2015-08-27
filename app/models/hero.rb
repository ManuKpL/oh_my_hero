class Hero < ActiveRecord::Base
  SKILLS = ["Do my Laundry", "Be my Wingman", "Party & Have Fun", "Teach Mathematics to my Son", "Fight a Bad Guy"]
  belongs_to :owner, class_name: "User", foreign_key: :user_id
  has_many :reservations

  has_attached_file :picture,
    styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }

  validates_presence_of :name, :description, :price, :address, :user_id
  validates :skill, inclusion: { in: Hero::SKILLS, allow_nil: false }
  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
