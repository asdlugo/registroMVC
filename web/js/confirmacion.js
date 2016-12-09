function calc_total(){
    var sum = 0;
    $('.input-amount').each(function(){
        sum += parseFloat($(this).text());
    });
    $(".preview-total").text(sum);    
}
$(document).on('click', '.input-remove-row', function(){ 
    var tr = $(this).closest('tr');
    tr.fadeOut(200, function(){
        tr.remove();
        calc_total()
    });
});

$(function(){
    $('.preview-add-button').click(function(){
        var form_data = {};
        form_data["cedula"] = $('.payment-form #cedula option:selected').text();;
        form_data["numcedula"] = $('.payment-form input[name="numcedula"]').val();
        form_data["nombre"] = $('.payment-form input[name="nombre"]').val();
        form_data["nombredos"] = $('.payment-form input[name="nombredos"]').val();
        form_data["apellido"] = $('.payment-form input[name="apellido"]').val();
        form_data["apellidodos"] = $('.payment-form input[name="apellidodos"]').val();
        form_data["correo"] = $('.payment-form input[name="correo"]').val();
        form_data["local"] = $('.payment-form input[name="local"]').val();
        form_data["celular"] = $('.payment-form input[name="celular"]').val();
        form_data["edocivil"] = $('.payment-form #edocivil option:selected').text();
        form_data["fecha"] = $('.payment-form input[name="fecha"]').val();
        form_data["genero"] = $('.payment-form #genero option:selected').text();
        form_data["gradoinstruccion"] = $('.payment-form #gradoinstruccion option:selected').text();

        form_data["remove-row"] = '<span class="glyphicon glyphicon-remove"></span>';
        var row = $('<tr></tr>');
        $.each(form_data, function( type, value ) {
            $('<td class="input-'+type+'"></td>').html(value).appendTo(row);
        });
        $('.preview-table > tbody:last').append(row); 
        calc_total();
    });  
});
