// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {
    $('.progress .progress-bar').progressbar()
    setTimeout(function(){
      if($(".progress-bar").attr("aria-valuenow") === "98"){
        $(".progress-bar").attr("class", "progress-bar progress-bar-success");
      }
    }, 1000);


  
    
});


