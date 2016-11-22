class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile
  belongs_to :role
  has_one :pharmacy

  # attr_accessor :avatar
  # mount_uploader :avatar, AvatarUploader
  #
  # before_create :set_role
  #
  # private
  #   def set_role
  #
  #   end

end
