class Billboard < ApplicationRecord
  has_many :artist

  validates :artist_ranking, :top_artist, presence: true
  validates :artist_ranking, numericality: { only_integer: true, less_than_or_equal_to: 100, g}
end
