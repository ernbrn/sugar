var AppRouter = Backbone.Router.extend({
    routes: {


             'student-summary/:id'     :     'getStudentSummary',
             'student/:id'    :     'getStudent',



        }
    });

    // Initiate the router
    var app_router = new AppRouter;

    var studentCollection;

    var classRoster;


    app_router.on('route:getStudent', function(postId) {
      var studentSingleView = new StudentSingleView;
        console.log('Presenting student ' + postId);
        var m = studentCollection.get(postId);
        $('.container').html(studentSingleView.render(m).$el);
    })




    // Start Backbone history a necessary step for bookmarkable URL's
    Backbone.history.start();
