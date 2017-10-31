class CreateFavoriteMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_movies do |t|

      t.timestamps
    end
  end
end
