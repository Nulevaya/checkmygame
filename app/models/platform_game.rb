class PlatformGame < ApplicationRecord
  has_many :platform_game_attachments
  has_many :platform_game_releases
  belongs_to :game
  belongs_to :platform
end
