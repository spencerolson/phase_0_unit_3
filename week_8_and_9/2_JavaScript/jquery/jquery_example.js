$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'});
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
 var bodyElement = $('body');
 console.log(bodyElement);
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
  $('h1').css({'color': '#33bbcc'});
  $('h1').css({'border': 'groove'});
  $('h1').css({'visibility': 'visible'});
  $('div h1').html('Coyotes Cohort');
 


//RELEASE 3: Event Listener
  // Add the code for the event listener here 
 $('div img').on('mouseover', function(e){ 
 e.preventDefault();
 $(this).attr('src', 'http://www.crittersbythebay.com/critter_files/images/yip_al.jpg') });

 $('div img').on('mouseleave', function(e){ 
 e.preventDefault();
 $(this).attr('src', 'dbc_logo.jpg') });
 
//RELEASE 4 : Experiment on your own
 $('img').click(function() {
  $('img').animate({
    width: 50,
    border: 'dotted'
  }, 1000, function() {
    $(this).attr('src', 'http://featheredphotography.com/blog/wp-content/uploads/2012/12/coyote-8829-ron-dudley.jpg')
  });
});
 
 
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
