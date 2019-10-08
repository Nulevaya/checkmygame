class CreatePlatformGames < ActiveRecord::Migration[5.2]
  def change
    create_table :platform_games do |t|
      t.references :game, index: true, foreign_key: true, null: false
      t.references :platform, index: true, foreign_key: true, null: false
      t.integer :metacritic_score

      t.timestamps
    end
  end
end
