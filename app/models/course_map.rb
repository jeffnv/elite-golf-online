# == Schema Information
#
# Table name: course_maps
#
#  id         :integer          not null, primary key
#  map_id     :integer          not null
#  course_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CourseMap < ActiveRecord::Base
  validates :map_id, :course_id, :presence => true
end
