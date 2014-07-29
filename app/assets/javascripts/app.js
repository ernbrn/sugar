var HomeView = Backbone.View.extend ({
	className : 'home',
		initialize:function(){
			console.log('Welcome to Sugar!');
		},

		render: function () {

				var source = $('#home-template').html();
				this.$el.html(source);
				console.log('Home page rendered');
				return this;
			},


		events: {

		'hover .vine-selecton-entry' : 'hoverItem'

		},



		hoverItem: function (e) {
			alert('Clicked');
				e.currentTarget.css({"border-color" : "#FFF"});
		}


});



// Launch home page


$(function () {
	'use strict';
	var homeView = new HomeView();

		$('.container').load($('.home-template').html());




});


  $('div').click(function(e) {
       $(event.currentTarget).child('img').css('border-color','#fff');
});

$('h1').click(function(e) {
		$('img').css('border-color','white');
		alert('Hello');
});
