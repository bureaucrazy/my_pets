class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :first_name
      t.string :last_name
      t.string :birth_place
      t.datetime :birth_date
      t.string :breed
      t.string :tracking_uid
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :pets, :first_name
    add_index :pets, :tracking_uid
  end
end
