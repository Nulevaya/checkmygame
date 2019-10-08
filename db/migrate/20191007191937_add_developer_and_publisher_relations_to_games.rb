class AddDeveloperAndPublisherRelationsToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :developer_id, :integer, null: false
    add_column :games, :publisher_id, :integer, null: false

    add_index :games, :developer_id
    add_index :games, :publisher_id

    add_foreign_key :games, :developers
    add_foreign_key :games, :publishers
  end
end