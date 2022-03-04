class Song < ApplicationRecord
  belongs_to :artists

  validates :song_name, :song_duration, presence:true
  validates :song_duration, numericality: { only_float: true}
  
end
