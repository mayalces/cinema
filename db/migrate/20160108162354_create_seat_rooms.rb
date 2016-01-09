class CreateSeatRooms < ActiveRecord::Migration
  def change
    create_table :seat_rooms do |t|
      t.integer :seat
      t.string :line
      t.string :state
      t.references :movie_room, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
