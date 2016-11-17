class CreatePharmacies < ActiveRecord::Migration[5.0]
  def change
    create_table :pharmacies do |t|
      t.references :pharmacy_id, foreign_key: true
      t.string :name
      t.text :address
      t.string :suburb
      t.decimal :lat, precision: 9, scale: 6
      t.decimal :lng, precision: 9, scale: 6
      t.string :logo_url

      t.timestamps
    end
  end
end
