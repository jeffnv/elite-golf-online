class UpdateHighScores < ActiveRecord::Migration
  def change
    add_column :high_scores, :user_id, :integer
    add_column :high_scores, :course_id, :integer
  end
end
