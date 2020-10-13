class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :send_user_id
      t.integer :receive_user_id
      t.integer :pair_room_id

      t.timestamps
    end
  end
end
