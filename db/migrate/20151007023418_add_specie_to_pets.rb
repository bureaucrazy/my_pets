class AddSpecieToPets < ActiveRecord::Migration
  def change
    add_column :pets, :specie, :string
  end
end
