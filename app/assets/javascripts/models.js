var Student = Backbone.Model.extend ({
  defaults: {
    avatar : "http://i.imgur.com/s7mpWGj.jpg",
    course : "ror"
  },
  urlRoot: 'students/'

});

var ClassRoster = Backbone.Collection.extend ({
    model: Student,
    url: 'students/'
    });

var classRoster = new ClassRoster();
