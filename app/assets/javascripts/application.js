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

var textArea = []
textArea.push(document.forms[0].getElementsByClassName('styled')[0].value);
function input_li(){
    if ( textArea.length > 0){
        textArea.push("<li></li>");
        document.forms[0].getElementsByClassName('styled')[0].value = textArea.toString();
    }else{
        textArea.push(document.forms[0].getElementsByClassName('styled')[0].value);
        textArea.push("<li></li>");
        document.forms[0].getElementsByClassName('styled')[0].value = textArea.toString();
    }
}
function input_p(){
    if ( textArea.length > 0){
        textArea.push("<p></p>");
        document.forms[0].getElementsByClassName('styled')[0].value = textArea.toString();
    }else{
        textArea.push(document.forms[0].getElementsByClassName('styled')[0].value);
        textArea.push("<p></p>");
        document.forms[0].getElementsByClassName('styled')[0].value = textArea.toString();
    }
}
function input_a(){
    if ( textArea.length > 0){
        textArea.push("<a></a>");
        document.forms[0].getElementsByClassName('styled')[0].value = textArea.toString();
    }else{
        textArea.push(document.forms[0].getElementsByClassName('styled')[0].value);
        textArea.push("<a></a>");
        document.forms[0].getElementsByClassName('styled')[0].value = textArea.toString();
    }
}
