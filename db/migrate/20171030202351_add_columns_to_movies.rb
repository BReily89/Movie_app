class AddColumnsToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :title, :string
    add_column :movies, :genre , :string
    add_column :movies, :year, :integer
    add_column :movies, :synopsis, :string
    add_column :movies, :favorite_movies :string
    
  end
end
