class Reservation < ActiveRecord::Base
  belongs_to :hero
  belongs_to :customer, class_name: "User", foreign_key: :user_id

  validates_presence_of :check_in, :check_out, :hero_id, :user_id

  validates :check_in, :check_out, overlap: { scope: 'hero_id', message_content: 'This Hero is not available at this time' }
end
