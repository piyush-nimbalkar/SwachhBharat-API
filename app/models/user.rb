class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
