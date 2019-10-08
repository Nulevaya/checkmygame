class CreatePlatformGameAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :platform_game_attachments do |t|
      t.references :platform_game, index: true, foreign_key: true, null: false
      t.string :url, null: false
      t.string :type, null: false, index: true
       
      t.timestamps
    end
  end
end
