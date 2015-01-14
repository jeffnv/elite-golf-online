EliteGolfApp.Views.CoursesCreator = Backbone.View.extend({
    initialize: function() {
        this.listenTo(this.collection, 'sync', this.render);
    },
    events: {
        'submit .course-form': 'createCourse'
    },
    createCourse: function(event) {
        event.preventDefault();
        var data = this.$('.course-form').serializeJSON();
        var course = new EliteGolfApp.Models.Course();
        course.save(data, {
            success: function(resp) {
                debugger
            },
            error: function(data, resp) {
                debugger
            },
        });
    },
    template: JST['courses/creator'],
    render: function() {
        this.$el.html(this.template({
            maps: this.collection
        }));
        return this;
    }
});
