class AddWhichMovieToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :which_movie, :string, limit: 50
  end
end
