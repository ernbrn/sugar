var ClassRosterView = Backbone.View.extend ({
  className : '',
      initialize:function(){

    },

    render: function () {
        this.template = Handlebars.compile($('#student-list-template').html());
        console.log(this.collection.toJSON());
        var rendered = this.template({classRoster: this.collection.toJSON()});
        this.$el.html(rendered);
        console.log(classRoster);
        return this;

}
});


var classRosterView = new ClassRosterView ({
    collection: classRoster
  });


var StudentSingleView = Backbone.View.extend({

    initialize: function(){
        console.log('Initializing single student view');


      },

    render: function(model){
        console.log(model);
        this.template = Handlebars.compile($('#student-single-template').html());
        this.$el.html(this.template(model.toJSON()));
        return this;
    }
});

var studentSingleView = new StudentSingleView();
