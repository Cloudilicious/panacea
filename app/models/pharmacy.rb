class Pharmacy < ApplicationRecord
  belongs_to :user
  belongs_to :suburb
  attr_accessor :avatar
  mount_uploader :avatar, AvatarUploader
end
