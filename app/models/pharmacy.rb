class Pharmacy < ApplicationRecord
  belongs_to :user

  attr_accessor :avatar

  # mount_uploader :avatar, AvatarUploader
end
