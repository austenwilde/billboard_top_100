class Song < ApplicationRecord
  belongs_to :artist

  validates :song_name, :song_duration, presence: true
  validates :song_duration, numericality: { only_integer: true, less_than_or_equal_to: 100, greater_than_or_equal_to: 0 }
end
