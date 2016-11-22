class Genre < ApplicationRecord
	def to_s
		name
	end

	has_many :songs
end
