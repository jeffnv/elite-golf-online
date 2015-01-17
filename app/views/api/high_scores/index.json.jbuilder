json.array! @scores do |score|
  json.partial! "high_score", score: score
end
