class AddNameToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :name, :string
    add_index :maps, :name
  end
end
