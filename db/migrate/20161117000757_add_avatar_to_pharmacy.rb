class AddAvatarToPharmacy < ActiveRecord::Migration[5.0]
  def change
    add_column :pharmacies, :avatar, :string
  end
end
