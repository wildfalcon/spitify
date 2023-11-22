class AddReleaseDateToSong < ActiveRecord::Migration[7.1]
  def change
    add_column :songs, :release_date, :datetime
  end
end
