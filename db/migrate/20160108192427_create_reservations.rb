class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :movie_showtime, index: true, foreign_key: true
      t.references :seat_room, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :food, index: true, foreign_key: true
      t.datetime :start_time

      t.timestamps null: false
    end
  end
end
