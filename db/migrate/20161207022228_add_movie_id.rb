class AddMovieId < ActiveRecord::Migration[5.0]
  def change
    add_column :actors, :movie_id, :integer
  end
end
