EliteGolfApp.Views.CoursesIndexItem = Backbone.View.extend({
    tagName: 'li',
    template: JST['courses/index_item'],
    render: function() {
        this.$el.html(this.template({course: this.model}));
        return this;
    }
});
