json.(@course, :name, :id)
json.maps @course.maps
json.high_scores @course.high_scores.limit(15).order('score ASC') do |score|
  json.name score.name
  json.created_at score.created_at
  json.score score.score
  json.score_class score_class(score_diff(@course.par, score.score))
  json.score_diff diff_string(score_diff(@course.par, score.score))
end

