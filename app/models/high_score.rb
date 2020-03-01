# == Schema Information
#
# Table name: high_scores
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  score      :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  course_id  :integer
#

class HighScore < ApplicationRecord
  validates :name, :score,:course_id, presence: true
  validate :score_must_belong_to_user

  belongs_to :course

  def self.best
    self.order("score ASC")
  end

  def score_must_belong_to_user
    if name.nil? && user_id.nil?
      errors[:user] << " must include name"
    end
  end
end
