EliteGolfApp.Views.Home = Backbone.CompositeView.extend({
    initialize: function() {
        this.coursesIndex = new EliteGolfApp.Views.CoursesIndex({
            collection: this.collection
        });
    },
    template: JST['home'],
    render: function() {
        this.$el.html(this.template());
        this.$('.top-courses').append(this.coursesIndex.render().$el);
        return this;
    }
});
