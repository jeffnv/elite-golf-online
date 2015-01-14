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
        var newMap = new EliteGolfApp.Models.Map({
            data: data.mapJSON,
            par: data.par,
            name: this.$('.map-name').val()
        });
        newMap.save({}, {
            success: function(resp) {
                debugger
            },
            error: function(resp) {
                debugger
            }
        });
    }
});
