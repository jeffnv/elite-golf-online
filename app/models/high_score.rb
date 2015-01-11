# == Schema Information
#
# Table name: high_scores
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  score      :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HighScore < ActiveRecord::Base
  validates :name, :score, presence: true
end
