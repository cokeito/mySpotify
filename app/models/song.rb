class Song < ApplicationRecord
  belongs_to :genre
  has_many :playlists, dependent: :destroy
  has_many :users,  through: :playlists

end
