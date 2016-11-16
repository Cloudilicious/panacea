class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user_id, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :suburb
      t.string :medicare
      t.string :concession
      t.date :date_of_birth
      t.string :sex

      t.timestamps
    end
  end
end
