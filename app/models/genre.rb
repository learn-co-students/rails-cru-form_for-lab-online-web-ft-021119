class Genre < ApplicationRecord
    has_many :artists, through: :songs
    has_many :songs
end
