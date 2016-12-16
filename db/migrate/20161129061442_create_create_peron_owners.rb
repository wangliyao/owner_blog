class CreateCreatePeronOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :create_peron_owners do |t|
       t.string :name,:limit => 32, :collate => "utf8_bin"
       t.string :password,:limit => 32, :collate => "utf8_bin"
       t.string :secret,:limit => 32, :collate => "utf8_bin"
       t.string :mail ,:limit => 32, :collate => "utf8_bin"
       t.string "created_by", :limit => 22, :collate => "utf8_bin"
       t.string "updated_by", :limit => 22, :collate => "utf8_bin"
       t.datetime "created_at"
       t.datetime "updated_at"
    end
    change_column :create_peron_owners, "id", :string, :null => false, :limit => 32, :collate => "utf8_bin"
  end
end
