class CreateBillboards < ActiveRecord::Migration[7.0]
  def change
    create_table :billboards do |t|
      t.integer :artist_ranking
      t.string :top_artist

      t.timestamps
    end
  end
end
