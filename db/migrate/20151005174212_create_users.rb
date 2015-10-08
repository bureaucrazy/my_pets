class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.text :address
      t.string :home_phone
      t.string :cell_phone
      t.float :longitude
      t.float :latitude

      t.timestamps null: false
    end
    add_index :users, :email
  end
end
