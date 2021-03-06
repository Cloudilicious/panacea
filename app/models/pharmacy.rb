class Pharmacy < ApplicationRecord
  belongs_to :user
  belongs_to :suburb
  has_many :booking

  validates :address, presence: true

  geocoded_by :full_address, latitude: :lat, longitude: :lng
  after_validation :geocode

  attr_accessor :avatar
  mount_uploader :avatar, AvatarUploader

  def full_address
    [address, suburb.name].join(', ')
  end

  def self.search(search)
    where("suburb LIKE ?", "#{search}")
  end

end
