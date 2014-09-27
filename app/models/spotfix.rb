class Spotfix < ActiveRecord::Base

  module Status
    PENDING = 'pending'
    FIXED = 'fixed'
  end

  belongs_to :owner, class_name: 'User'
  has_many :replies

  validates_presence_of :title, :status, :latitude, :longitude, :fix_date
  validates_inclusion_of :status, in: [Status::PENDING, Status::FIXED], message: 'is invalid'

end
