json.array! @courses do |course|
  json.id course.id
  json.name course.name
  json.par course.maps.inject(0){|a, m| a + m.par}
  unless course.high_scores.empty?
    json.highest_score do
      json.partial! 'api/high_scores/high_score', score: course.best_score
    end
  end
  json.play_count course.high_scores.length
  json.hole_count course.maps.length
end
