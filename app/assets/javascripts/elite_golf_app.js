window.EliteGolfApp = {
    Models: {},
    Collections: {},
    Views: {},
    Routers: {},
    initialize: function() {
        var $root = $('#app-root');
        new EliteGolfApp.Routers.GolfRouter({
            $root: $root
        });
        Backbone.history.start();
    }
};
