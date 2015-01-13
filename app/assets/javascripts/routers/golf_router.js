EliteGolfApp.Routers.GolfRouter = Backbone.Router.extend({
    initialize: function(options) {
        this.$root = options.$root;
        this.courses = new EliteGolfApp.Collections.Courses();
    },
    routes: {
        '': 'courses'
    },
    courses: function() {
        var view = new EliteGolfApp.Views.CoursesIndex({
            collection: this.courses
        });
        this.swapView(view);
        this.courses.fetch();
    },
    swapView: function(view) {
        if (this._currentView) {
            this._currentView.remove();
        }
        this.$root.html(view.render().$el);
    }
});
