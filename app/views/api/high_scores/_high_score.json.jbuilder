json.id score.id
json.name score.name
json.score score.score
json.created_at score.created_at
diff = score_diff(score.course.par, score.score)
json.score_class score_class(diff)
json.score_diff diff_string(diff)
