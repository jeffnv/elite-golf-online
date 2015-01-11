class CreateHighScores < ActiveRecord::Migration
  def change
    create_table :high_scores do |t|
      t.string :name, :null => false
      t.integer :score, :null => false
      t.timestamps null: false
    end
  end
end
