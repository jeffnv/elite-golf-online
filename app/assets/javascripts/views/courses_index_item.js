EliteGolfApp.Views.CoursesIndexItem = Backbone.View.extend({
    className: "course-data",
    template: JST['courses/index_item'],
    render: function() {
        this.$el.html(this.template({course: this.model}));
        return this;
    }
});
