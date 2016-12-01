class CreateOtherInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :other_informations do |t|
      t.string :person_id ,:limit=>32
      t.string :information
    end
    change_column :other_informations, "id", :string, :null => false, :limit => 32, :collate => "utf8_bin"
  end
end
