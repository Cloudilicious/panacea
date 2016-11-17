class CreatePharmacies < ActiveRecord::Migration[5.0]
  def change
    create_table :pharmacies do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :address
      t.references :suburb, foreign_key: true
      t.decimal :lat, precision: 9, scale: 6
      t.decimal :lng, precision: 9, scale: 6

      t.timestamps
    end
  end
end
