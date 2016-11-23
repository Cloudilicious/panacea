class Suburb < ApplicationRecord

  scope :name_eq, -> (name) { where('lower(name) = lower(?)', name) }
  
end
