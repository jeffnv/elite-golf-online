EliteGolfApp.Collections.Courses = Backbone.Collection.extend({
  url: '/api/courses',
  model: EliteGolfApp.Models.Course
});
