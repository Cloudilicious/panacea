class Pharmacy < ApplicationRecord
  belongs_to :user
  belongs_to :suburb

  validates :address, presence: true

  geocoded_by :address, latitude: :lat, longitude: :lng
  after_validation :geocode

  attr_accessor :avatar
  mount_uploader :avatar, AvatarUploader

  # def address(prefix = nil)
  #   [address, suburb.name].select(&:present?).(', ')
  # end

end
