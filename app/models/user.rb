class User < ActiveRecord::Base

  before_save { self.email = email.downcase }

  has_many :spotfixes, foreign_key: :owner_id
  has_many :replies

  validates_presence_of :first_name, :last_name
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  has_secure_password
  validates :password, length: { minimum: 6 }

end
