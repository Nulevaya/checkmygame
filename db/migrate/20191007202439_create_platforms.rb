class CreatePlatforms < ActiveRecord::Migration[5.2]
  def change
    create_table :platforms do |t|
      t.string :name, null: false, index: true, unique: true
      t.datetime :release_date

      t.timestamps
    end
  end
end
