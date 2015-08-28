class User < ActiveRecord::Base
  after_create :send_welcome_email
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
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

  def self.find_for_facebook_oauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.picture = auth.info.image.gsub("http", "https")
      user.token = auth.credentials.token
      user.token_expiry = Time.at(auth.credentials.expires_at)
    end
  end


  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

  # ANTONIN CODE
  # create a function that
    #  if first_name and last_name
      #  user is
    #  if no name
      # no name
    # edit profile in the form

end
