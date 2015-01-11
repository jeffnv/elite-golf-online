class CreateCourseMaps < ActiveRecord::Migration
  def change
    create_table :course_maps do |t|
      t.integer :map_id, null: false
      t.integer :course_id, null: false
      t.timestamps null: false
    end
    add_index :course_maps, :map_id
    add_index :course_maps, :course_id
  end
end
