class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :artist_name
      t.string :artist_genre
      t.belongs_to :billboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
