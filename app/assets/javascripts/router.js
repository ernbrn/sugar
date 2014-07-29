var AppRouter = Backbone.Router.extend({
    routes: {
             'student-summary/:id'     :     'getStudentSummary',
             'roster/:id'    :     'getStudent',
             'roster'    : 'showRoster'

        }
    });

    // Initiate the router
var app_router = new AppRouter;

var classRoster;

var classRosterView;


app_router.on('route:showRoster', function() {
    var classRoster = new ClassRoster();

    var classRosterView = new ClassRosterView ({
        collection: classRoster
      });

    console.log('Presenting class roster');
    classRoster.fetch().done(function(){
    console.log('Roster fetched', classRoster);

      classRoster.each(function(student){
         var gh = (student.get('github'));
var ghUserURL = 'https://api.github.com/users/' + student.get('name') + '?' + ghToken;

         student.set('avatar', $.getJSON(ghUserURL).done(function(userData){
           console.log(student);
           return userData.avatar_url;
         }));

        $('.container').html(classRosterView.render().$el);
      });
    });
  });


app_router.on('route:getStudent', function(id) {
  classRoster.fetch().done(function(){

  var studentSingleView = new StudentSingleView;
    console.log('Presenting student ' + id);
    var m = classRoster.get(id);
    $('.container').html(studentSingleView.render(m).$el);
})
});






    // Start Backbone history a necessary step for bookmarkable URL's
    Backbone.history.start();
