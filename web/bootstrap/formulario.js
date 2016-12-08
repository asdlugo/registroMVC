/* # Validando Formulario
============================================*/
$(document).ready(function(){
 $('#formulario').validate({
  errorElement: "span",
  rules: {
      txtemail: {
        minlength: 2,
          required: true
      } 
    
  },
  highlight: function(element) {
   $(element).closest('.control-group')
   .removeClass('success').addClass('error');
  },
  success: function(element) {
   element
   .text('OK!').addClass('help-inline')
   .closest('.control-group')
   .removeClass('error').addClass('success');
  }
 });
});


