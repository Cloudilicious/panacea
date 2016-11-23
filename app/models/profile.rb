class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :suburb
  has_many :booking

  validates :first_name, presence: true
  validates :last_name, presence: true
end
