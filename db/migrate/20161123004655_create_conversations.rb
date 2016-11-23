class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations do |t|
      t.integer :sender_id
      t.integer :recipient_id

      # t.references :sender, foreign_key: { to_table: :users }
      # t.references :recipient, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
