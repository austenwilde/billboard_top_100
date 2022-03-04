class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.float :song_duration

      t.timestamps
    end
  end
end
