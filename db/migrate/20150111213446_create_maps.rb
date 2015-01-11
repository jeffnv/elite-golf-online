class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.integer :par, null: false
      t.json :data, null: false

      t.timestamps null: false
    end
  end
end
