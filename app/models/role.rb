class Role < ApplicationRecord
  has_many :users

  def patient?
    name == "Patient"
  end

  def pharmacy?
    name == "Pharmacy"
  end
end
