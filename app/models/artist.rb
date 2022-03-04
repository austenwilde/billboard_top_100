class Artist < ApplicationRecord
  
  belongs_to :billboard
  has_many :song
  
  validates: :artist_name, :artist_genre, presence: true
  validates: :artist_name, uniqueness: true
  validates: :artist_genre, inclusion: {
    in: %w(Pop Country Rock HipHop Rap Jazz Indie Electronic),
      message: "Not a recognized genre"
  }
end
