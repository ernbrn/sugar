var Student = Backbone.Model.extend ({
  defaults: {
    avatar : "http://i.imgur.com/s7mpWGj.jpg",
    course : "ror"
  }

});

var ClassRoster = Backbone.Collection.extend ({
    model: Student,

    initialize: function (options) {
      this.url = 'students/';
    }
});

var classRoster = new ClassRoster();




// BD.Models.UserSession = Backbone.Model.extend({
//   url: '/users/sign_in.json',
//   paramRoot: 'user',
//
//   defaults: {
//     "email": "",
//     "password": ""
//   }
//
// });


var UserSession = Backbone.Model.extend({
  url: '/students/signin?',
  paramRoot: 'user',

  defaults: {
    "email": "",
    "password": ""
  }

});
