class CreateSongs < ActiveRecord::Migration[7.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :performer_id
      t.integer :author_id

      t.timestamps
    end
  end
end
