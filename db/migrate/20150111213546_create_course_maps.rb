class CreateCourseMaps < ActiveRecord::Migration
  def change
    create_table :course_maps do |t|
      t.integer :map_id
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
