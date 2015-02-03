EliteGolfApp.Views.CoursesIndex = Backbone.CompositeView.extend({
    template: JST['courses/index'],
    subviewConstructor: function() {
        return EliteGolfApp.Views.CoursesIndexItem;
    },
    modelAdded: function(model) {
        if (this.spinnerVisible) {
            this.removeSpinner();
            this.spinnerVisible = false;
        }
    },
    subviewSelector: ".courses-list",
    render: function() {
        this.$el.html(this.template({
            course: this.model
        }));

        if (this.subviews(this.subviewSelector).length == 0) {
            this.addSpinner();
        }

        this.attachSubviews();
        return this;
    },
    addSpinner: function() {
        this.$el.append("<div class='loader'>loading...</div>");
        this.spinnerVisible = true;
    },
    removeSpinner: function() {
        this.$('.loader').remove();
    },
});
