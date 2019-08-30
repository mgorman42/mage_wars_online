class User < ApplicationRecord
  has_secure_password

  has_many :purchases
  has_many :content_packs, through: :purchases
  has_many :mages

  validates_presence_of :username, :email
  validates_uniqueness_of :username
  validates :email,
    uniqueness: { case_sensitive: false },
    format: { with: /@/}
#  TODO  after_create :send_registration_email

  def email_activate
    self.email_confirmed = true
    self.confirm_token = nil
    save!(:validate => false)
  end

  private
=begin
TODO
  def send_registration_email
    self.confirm_token = SecureRandom.urlsafe_base64.to_s
    UserMailer.registration_confirmation(self).deliver
  end
=end
end
