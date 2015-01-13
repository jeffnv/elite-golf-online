EliteGolfApp.Views.CoursesIndex = Backbone.CompositeView.extend({
    initialize: function() {
        this.listenTo(this.collection, "add", this.addModel);
        this.collection.each(this.addModel.bind(this));
    },
    subview: function() {
        return EliteGolfApp.Views.CoursesIndexItem;
    },
    template: JST['courses/index'],
    addModel: function(model) {
        var subview = new EliteGolfApp.Views.CoursesIndexItem({
            model: model
        });
        this.addSubview('.courses-list', subview);
    },
    render: function() {
        this.$el.html(this.template({
            course: this.model
        }));
        this.attachSubviews();
        return this;
    }
});
