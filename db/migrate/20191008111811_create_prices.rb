class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.references :platform_game_release, index: true, foreign_key: true, null: false
      t.integer :amount
      t.integer :currency
      t.boolean :current
      
      t.timestamps
    end
  end
end
