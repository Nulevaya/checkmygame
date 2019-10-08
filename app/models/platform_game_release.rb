class PlatformGameRelease < ApplicationRecord
  belongs_to :platform_game
  has_many :platform_game_release_pictures
  has_many :prices
end