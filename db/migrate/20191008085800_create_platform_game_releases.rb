class CreatePlatformGameReleases < ActiveRecord::Migration[5.2]
  def change
    create_table :platform_game_releases do |t|
      t.references :platform_game, index: true, foreign_key: true, null: false
      t.string :name, null: false
      t.string :type, null: false, index: true
      t.integer :edition_type, null: false, default: 0
      t.boolean :dlc, null: false, default: false

      t.timestamps
    end
  end
end
