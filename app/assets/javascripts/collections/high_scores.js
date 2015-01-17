EliteGolfApp.Collections.HighScores = Backbone.Collection.extend({
  model: EliteGolfApp.Models.HighScore,
  url: "/api/high_scores",
  comparator: 'score'
});
