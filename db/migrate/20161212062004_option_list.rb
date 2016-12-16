class OptionList < ActiveRecord::Migration[5.0]
  def change
    create_table :option_list do |t|
      t.string :name
      t.string :child_id
    end
    change_column :option_list, "id", :string, :null => false, :limit => 32, :collate => "utf8_bin"
  end
end
