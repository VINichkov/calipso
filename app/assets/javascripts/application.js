// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

function login(){

var log_in=new XMLHttpRequest();
    log_in('GET', '/profiles/sign_in', false);
    log_in.send();
    if (log_in.status != 200) {
        // обработать ошибку
        alert( log_in.status + ': ' + log_in.statusText ); // пример вывода: 404: Not Found
    } else {
        // вывести результат
        var log=document.getElementById('login');
        log.innerHTML=log_in.responseText; // responseText -- текст ответа.
    }


}