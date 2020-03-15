EliteGolfApp.Views.CoursesShow = Backbone.View.extend({
    initialize: function () {
        this.listenTo(this.model, 'sync', this.startGolfing);
    },
    template: JST["courses/show"],
    render: function () {
        this.$el.html(this.template({
            course: this.model
        }));
        return this;
    },
    startGolfing: function () {
        this.render();
        MAPS = this.model.maps().pluck('data');
        var game = new EliteGolf(this.$('.golf-game')[0], this.gameOver.bind(this));
        game.run();
    },
    gameOver: function (results) {
        var that = this;
        var newScore = new EliteGolfApp.Models.HighScore({
            score: results.score,
            course_id: this.model.id
        });
        newScore.save({}, {
            success: function (model) {
                that.model.highScores().add(newScore);
                //that.model.highScores().sort();
                that.render();
                that.startGolfing();
            }
        });
    }
});
