class CreateMovieShowtimes < ActiveRecord::Migration
  def change
    create_table :movie_showtimes do |t|
      t.references :movie, index: true, foreign_key: true
      t.references :movie_room, index: true, foreign_key: true
      t.datetime :start_time

      t.timestamps null: false
    end
  end
end
