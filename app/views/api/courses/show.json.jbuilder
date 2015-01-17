json.(@course, :name, :id)
json.maps @course.maps
json.high_scores @course.high_scores.limit(15).order('score ASC') do |score|
  json.partial! "api/high_scores/high_score", score: score
end

