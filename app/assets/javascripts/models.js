var Student = Backbone.Model.extend ();

var ClassRoster = Backbone.Collection.extend ({
    model: Student,

    initialize: function (options) {
      this.url = 'students/';
    }
});

var classRoster = new ClassRoster();
