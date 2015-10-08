class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :longitude
      t.float :latitude
      t.datetime :time
      t.references :pet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
