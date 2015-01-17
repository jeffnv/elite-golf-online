EliteGolfApp.Models.Course = Backbone.Model.extend({
    urlRoot: "/api/courses",
    parOffset: function(score){
      var diff = par - score;
      if (diff < 0){
      } 
    },
    maps: function() {
        if (this._maps) {
            return this._maps;
        } else {
            return this._maps = new EliteGolfApp.Collections.Maps();
        }
    },
    highScores: function() {
        if (this._highScores) {
            return this._highScores;
        } else {
            return this._highScores = new EliteGolfApp.Collections.HighScores();
        }
    },
    highestScore: function() {
        if (!this._highestScore) {
          this._highestScore = new EliteGolfApp.Models.HighScore({score: 'none', name: 'none'});
        }
        return this._highestScore;
    },
    parse: function(data) {
        if (data.maps) {
            this.maps().set(data.maps);
            delete data.maps;
        }
        if (data.highest_score) {
          this.highestScore().set(data.highest_score);
          delete data.highest_score;
        }
        if (data.high_scores){
          this.highScores().set(data.high_scores);
          delete data.high_scores;
        }
        return data;
    },
});
