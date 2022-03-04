class Artist < ApplicationRecord
  belongs_to :billboard

  validates :artist_name, :artist_genre, presence: true
  validates :artist_name, uniqueness: true
  validates :artist_genre, inclusion: {
    in: %w(Pop Rap HipHop Rock Country Electronic)
      message: "Not a recognizable genre"
  }
end
