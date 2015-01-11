# == Schema Information
#
# Table name: maps
#
#  id         :integer          not null, primary key
#  par        :integer          not null
#  data       :json             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Map < ActiveRecord::Base
  validates :par, :data, presence: true
  has_many :course_maps
  has_many :courses, through: :course_maps, source: :course
end
