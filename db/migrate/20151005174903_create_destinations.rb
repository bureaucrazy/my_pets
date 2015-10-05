class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.text :address
      t.float :longitude
      t.float :latitude
      t.references :pet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
