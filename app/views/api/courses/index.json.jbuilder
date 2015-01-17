json.array! @courses do |course|
  json.id course.id
  json.name course.name
  json.par course.maps.inject(0){|a, m| a + m.par}
  json.highest_score course.high_scores.best.first
  json.play_count course.high_scores.length
  json.hole_count course.maps.length
end
