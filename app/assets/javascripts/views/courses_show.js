EliteGolfApp.Views.CoursesShow = Backbone.View.extend({
    initialize: function() {
        this.listenTo(this.model, 'sync', this.startGolfing);
    },
    template: JST["courses/show"],
    render: function() {
        this.$el.html(this.template({
            course: this.model
        }));
        return this;
    },
    startGolfing: function() {
        this.render();
        var gameOverCallback = function(results) {
            alert('score: ' + results.score + " par: " + results.par);
        };
        MAPS = this.model.maps().pluck('data');
        var game = new EliteGolf(this.$('.golf-game'), gameOverCallback);
        game.run();
    },
});
