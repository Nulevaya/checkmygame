class CreatePlatformGameReleasePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :platform_game_release_pictures do |t|
      t.references :platform_game_release, index: { name: 'index_release_pictures_on_platform_game_release_id'}, foreign_key: true, null: false
      t.string :url, null: false

      t.timestamps
    end
  end
end
