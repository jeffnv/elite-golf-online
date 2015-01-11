class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.integer :par
      t.JSON :data

      t.timestamps null: false
    end
  end
end
