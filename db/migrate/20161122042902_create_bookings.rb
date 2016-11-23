class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :profile, foreign_key: true
      t.references :pharmacy, foreign_key: true
      t.datetime :appointment

      t.timestamps
    end
  end
end
