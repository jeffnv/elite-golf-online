EliteGolfApp.Routers.GolfRouter = Backbone.Router.extend({
    initialize: function(options) {
        this.$root = options.$root;
        this.courses = new EliteGolfApp.Collections.Courses();
        this.maps = new EliteGolfApp.Collections.Maps();
    },
    routes: {
        '': 'courses',
        'courses': 'courses',
        "courses/:id": 'coursesShow',
        'map_creator': 'mapCreator',
        'course_creator': 'courseCreator',

    },
    courseCreator: function() {
        var view = new EliteGolfApp.Views.CoursesCreator({
            collection: this.maps
        });
        this.swapView(view);
        this.maps.fetch();
    },
    mapCreator: function() {
        var view = new EliteGolfApp.Views.MapCreator();
        this.swapView(view);
    },
    coursesShow: function(id) {
        var model = new EliteGolfApp.Models.Course({
            id: id
        });
        var view = new EliteGolfApp.Views.CoursesShow({
            model: model
        });
        model.fetch();
        this.swapView(view);
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
