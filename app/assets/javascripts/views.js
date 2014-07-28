var ClassRosterView = Backbone.View.extend ({
  className : '',
      initialize:function(){

    },

    render: function () {
        this.template = Handlebars.compile($('#student-list-template').html());
        console.log(this.collection);
        console.log(this.collection.toJSON());
        var rendered = this.template({classRoster: this.collection.toJSON()});

        this.$el.html(rendered);
        console.log('Collection for rendered to page');
        return this;
}
});


var classRosterView = new ClassRosterView ({
    collection: classRoster
  });


var StudentSingleView = Backbone.View.extend({

    initialize: function(){
        console.log('Initializing single student view');

        $('#single').load("single.html");
        $('#list').load("list.html");


      },

    render: function(model){
        // this.template = Handlebars.compile($('#student-single-template').html());
        // this.$el.html(this.template(model.toJSON()));
        // return this;
    }
});

var studentSingleView = new StudentSingleView();
