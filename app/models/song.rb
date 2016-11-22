class Song < ApplicationRecord
  belongs_to :genre
  has_many :playlists
  has_many :users,  through: :playlists

end
