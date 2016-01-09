class CreateMovieRooms < ActiveRecord::Migration
  def change
    create_table :movie_rooms do |t|
      t.integer :seats

      t.timestamps null: false
    end
  end
end
