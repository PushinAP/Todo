// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require rails-ujs
//= require activestorage
//= require_tree .
//= require popper
//= require bootstrap-sprockets


function showForm() {
	document.getElementById('notactive').style.display = 'block';
	document.getElementById('forms').style.display = 'block';
}

function submitForm(id) {
	document.getElementById(id).submit();
	
}
 
function hideForm () {
	document.getElementById('notactive').style.display = 'none';
	document.getElementById('forms').style.display = 'none';
}

/*$(document).ready(function(){
  $('input').iCheck({
    checkboxClass: 'icheckbox_square-blue',
     radioClass: 'iradio_square-blue',
     increaseArea: '20%'
  });

  $('#_1').on('ifChanged', function(event){
  	alert(event.type);
	});
});*/

