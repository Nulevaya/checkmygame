class Game < ApplicationRecord
  belongs_to :developer
  belongs_to :publisher

  has_many :platform_games
  has_many :platforms, through: :platform_games
end
