# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Course < ActiveRecord::Base
  validates :name, :presence => true
  has_many :course_maps
  has_many :maps, through: :course_maps, source: :map
  has_many :high_scores
  scope :popular, -> do
    select("DISTINCT courses.*, count(high_scores.id)").
      joins('left outer join high_scores on high_scores.course_id = courses.id').
    group("courses.id").
    order("count(high_scores.id) DESC")
  end

  def par
    maps.inject(0){ |ac, m| ac + m.par}
  end

  def best_score
    high_scores.order('score ASC').first
  end

  def score_count
    high_scores.length
  end
end
