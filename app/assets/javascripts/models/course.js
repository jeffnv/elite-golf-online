EliteGolfApp.Models.Course = Backbone.Model.extend({
    urlRoot: "/api/courses",
    maps: function() {
        if (this._maps) {
            return this._maps;
        } else {
            return this._maps = new EliteGolfApp.Collections.Maps();
        }
    },
    parse: function(data) {
        if (data.maps) {
            this.maps().set(data.maps);
            delete data.maps;
        }
        return data;
    },
});
