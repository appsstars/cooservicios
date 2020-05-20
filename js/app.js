$(document).on('click',".btn-servicio",function(){

	var id = $(this).attr("data-id");
	//reste
	$('#monto').val(0);
	$('#plazo').val(0);
	$('#tasa').val(0);
	$('#cuota').val(0);
	$('#aportes').val(0);
	$('#seguro').val(0);
	$('#total_pagar').val(0);
	$('#total_interes').val(0);
	$('#total_aportes').val(0);


	$('input[name=id_linea]').val(id);
	var nombre_linea = 'dshfkj';

	//

		if(id==1){ 
			 nombre_linea = 'CREDIAPORTES';
			

		}else if(id==2){
			nombre_linea = 'CREDITO EDUCATIVO';
			

		}else if(id==3){
			 nombre_linea = "CREDITO LIBRE INVERSION";
		}else if(id==4){
			nombre_linea = 'COOEXPRESS';
		}else if(id==5){
			nombre_linea =  'CREDITÓ PARA REPARACIÓN O MEJORA DE VIVIENDA';
		}else if(id==6){
			nombre_linea = 'LINEA DE CREDITO ESPECIAL PARA AHORRADORES';
		}
		$('input[name=linea]').val(nombre_linea);
		$('.name-linea').html("<img src='img/iconos/check-square.png' class='check-square' /> "+nombre_linea);

	//

	var servicio = servicios.filter(objeto => objeto.id == id );

	$('#detalle-servicio .titulo').html("<img src='img/iconos/check-square.png' class='check-square' /> "+servicio[0]['titulo']);

	$('#detalle-servicio .img-banner').attr("src",'img/services/'+servicio[0]['img']);

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
	console.log(data);

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