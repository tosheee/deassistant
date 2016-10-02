//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(function(){
    $('#keywords').tablesorter();
});

function input(){
    var text = "here the text that you want to input.";
    document.forms.form1.area.value = text;
}