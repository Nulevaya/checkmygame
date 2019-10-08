class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name, null: false, index: true
      t.string :genre
      t.integer :avg_length
      t.text :description

      t.timestamps
    end
  end
end
