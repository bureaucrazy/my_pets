class AddStatusReferencesToPets < ActiveRecord::Migration
  def change
    add_reference :pets, :status, index: true, foreign_key: true
  end
end
