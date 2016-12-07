class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :duration
      t.string :genre
      t.text :description

      t.timestamps
    end
  end
end
