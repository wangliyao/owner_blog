class AddMailPerson < ActiveRecord::Migration[5.0]
  def up
    add_column :create_peron_owners, :mail, :string, :limit => 22
  end
end
