EliteGolfApp.Views.CoursesIndex = Backbone.CompositeView.extend({
    template: JST['courses/index'],
    subviewConstructor: function() {
        return EliteGolfApp.Views.CoursesIndexItem;
    },
    subviewSelector: ".courses-list",
    render: function() {
        this.$el.html(this.template({
            course: this.model
        }));
        this.attachSubviews();
        return this;
    }
});
