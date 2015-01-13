EliteGolfApp.Views.MapCreator = Backbone.View.extend({
    template: JST['maps/creator'],
    render: function() {
        this.$el.html(this.template());
        this.createMap();
        return this;
    },
    createMap: function() {
        var mapCreator = new EliteMapCreator(
            this.$('.map-creator'),
            this.publishMap.bind(this)
        )
          mapCreator.run();
    },
    publishMap: function(data) {
        debugger;
    }
});
