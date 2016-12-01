class CreateCreatePeronOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :create_peron_owners do |t|

      t.timestamps
    end
  end
end
