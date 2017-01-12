class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :address
      t.references :suburb, foreign_key: true
      t.string :medicare_no
      t.string :concession_no
      t.date :date_of_birth
      t.string :sex

      t.timestamps
    end
  end
end
