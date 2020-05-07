$(document).on('click',".btn-servicio",function(){

	var id = $(this).attr("data-id");

	$('input[name=id_linea]').val(id);

	//

		if(id==1){

			$('input[name=linea]').val('CREDIAPORTES');

		}else if(id==2){

			$('input[name=linea]').val('CREDITO EDUCATIVO');

		}else if(id==3){

			$('input[name=linea]').val('CREDITO LIBRE INVERSION');

		}else if(id==4){

			$('input[name=linea]').val('COOEXPRESS');

		}else if(id==5){

			$('input[name=linea]').val('CREDITÓ PARA REPARACIÓN O MEJORA DE VIVIENDA');

		}else if(id==6){

			$('input[name=linea]').val('LINEA DE CREDITO ESPECIAL PARA AHORRADORES');

		}

	//

	var servicio = servicios.filter(objeto => objeto.id == id );

	$('#detalle-servicio .titulo').html(servicio[0]['titulo']);

	$('#detalle-servicio img').attr("src",'img/services/'+servicio[0]['img']);

	$('#detalle-servicio .parrafo').html(servicio[0]['descripcion']);

	//

	$('#detalle-servicio .condiciones .tasa span').html(servicio[0]['condiciones'][0]['tasa']);

	$('#detalle-servicio .condiciones .plazo span').html(servicio[0]['condiciones'][0]['plazo']);

	$('#detalle-servicio .condiciones .monto span').html(servicio[0]['condiciones'][0]['monto']); 

	$('#detalle-servicio .condiciones .peridiosidad span').html(servicio[0]['condiciones'][0]['peridiosidad']);





	





	if(servicio[0]['condiciones'][0]['deudor_solidario']!=''){ 

		$('.deudor-solidario').show(); 

		$('#detalle-servicio .condiciones .deudor-solidario span').html(servicio[0]['condiciones'][0]['deudor_solidario']);



	}else{ $('.deudor-solidario').hide(); }





	if(servicio[0]['condiciones'][0]['garantia']!=''){ 

		$('.garantia').show(); 

		$('#detalle-servicio .condiciones .garantia span').html(servicio[0]['condiciones'][0]['garantia']); 



	}else{ $('.garantia').hide(); }





	if(servicio[0]['condiciones'][0]['periodo_gracia']!=''){ 

		$('.deudor-solidario').show(); 

		$('#detalle-servicio .condiciones .periodo-gracia span').html(servicio[0]['condiciones'][0]['periodo_gracia']);



	}else{ $('.periodo-gracia').hide(); }

	
	$('.parte1').show();
	$('.parte2').hide();
	$('#detalle-servicio').modal('show');

});



$(document).on('click','.llenar-form',function(){

	$('.info-servicio').fadeOut(0);

	$('.simulador, .sumulador .parte1').fadeIn(2000);

	llenar_simulador();

});



$(document).on('submit','#form-contact-simulador',function(){

	var data = $('#form-contact-simulador').serialize();

	$.ajax({

		"url":"form-contact-simulador.php",

		"method":"post",

		"data":data,

		success:function(r){

			$('.parte1').hide();

			$('.parte2').fadeIn(2000);

		}

	})

	return false;

});