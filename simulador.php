<div class="page-header">
  <h1 class="titulo"></h1>
</div>
<div class="form-group">

      <div class="input-group">
            <span class="input-group-addon beautiful">
                Monto ($)
            </span>
            <input type="text" class="form-control calcular_monto" min="1000000" value="1000000" id="monto" onkeyup="llenar_simulador()">
        </div>
        <span id="messageammountmax" style="color: #FE6777;display: none;">El monto debe ser superior a $ 1'000.000</span>
    </div>

    <div class="row">
       <div class="form-group col-md-12">
      <div class="input-group">
            <span class="input-group-addon beautiful">
                Meses
            </span>
            <input type="text" class="form-control calcular_monto" value="60" id="plazo" onkeyup="llenar_simulador()">
        </div>
    </div>


    <div class="form-group col-md-6" style="display: none;">
      <div class="input-group" sty>
            <span class="input-group-addon beautiful">
                Tasa
            </span>
            <input type="text" class="form-control" disabled  id="tasa">
            <span class="input-group-addon beautiful">
                %
            </span>
        </div>
    </div>
    </div>


    <div class="form-group">
      <div class="input-group">
            <span class="input-group-addon beautiful">
                Cuota ($)
            </span>
            <input type="text" class="form-control" disabled min=""  id="cuota">
        </div>
    </div>


      <div class="form-group" style="display: none;">
      <div class="input-group">
            <span class="input-group-addon beautiful">
                Seguro
            </span>
            <input type="text" class="form-control" disabled min=""  id="seguro">
        </div>
    </div>


    <div class="form-group">
      <div class="input-group">
            <span class="input-group-addon beautiful">
                Aportes ($)
            </span>
            <input type="text" class="form-control" disabled min=""  id="aportes">
        </div>
    </div>


     <div class="form-group">
      <div class="input-group">
            <span class="input-group-addon beautiful">
                TOTAL A PAGAR ($)
            </span>
            <input type="text" class="form-control" disabled min=""  id="total_pagar">
        </div>
    </div>

     <div class="form-group" style="display: none;">
      <div class="input-group">
            <span class="input-group-addon beautiful">
                TOTAL INTERESES ($)
            </span>
            <input type="text" class="form-control" disabled min=""  id="total_interes">
        </div>
    </div>


     <div class="form-group">
      <div class="input-group">
            <span class="input-group-addon beautiful">
                TOTAL APORTES ($)
            </span>
            <input type="text" class="form-control" disabled min="" id="total_aportes">
        </div>
    </div>


     <div class="form-group" style="display: none;">
      <div class="input-group">
            <span class="input-group-addon beautiful">
                SEGURO
            </span>
            <input type="text" class="form-control" disabled min=""  id="total_seguro">
        </div>
    </div>



    
    


<div class="single-blog text-center"></div>

<script>
  
 function llenar_simulador () {
    var tasa = 0;
    var linea =  $('input[name=id_linea]').val();

    if(linea==1){
      tasa = 1.0;
    }else if(linea==2){
      tasa = 1.20;
    }else if(linea==3){
      tasa = 1.70;
    }else if(linea==4){
      tasa = 1.40;
    }else if(linea==5){
      tasa = 1.70;
    }else if(linea==6){
      tasa = 0.5;
    }

    //operaciones
    var monto = parseFloat($('#monto').val());
    console.log(monto);
    var plazo = parseFloat($('#plazo').val());


    var tasa = tasa / 100;
    var tasa_seguro = 0.0750 / 100;
    var tasa_proyeccion = tasa + tasa_seguro;
    var total_aportes = 20000 * plazo;


 //  var valor_cuota = B4*((B7*((1+B7)^B8))/(((1+B7)^B8)-1))
    var valor_cuota = monto*((tasa_proyeccion*(Math.pow((1+tasa_proyeccion),plazo)))/((Math.pow((1+tasa_proyeccion),plazo))-1))

    var total_pagar = Math.round(valor_cuota) * plazo;
    //
    $("#cuota").val(Math.round(valor_cuota));
    $('#aportes').val('20000');
    
    $("#total_aportes").val(Math.round(total_aportes));

    $('#total_pagar').val(total_pagar);



  }

</script>