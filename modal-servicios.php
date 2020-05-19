<!-- Modal -->
<div class="modal fade" id="detalle-servicio" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-body">
        <div class="info-servicio">
           <img src="img" class="img-banner" alt="">
            <h1 class="titulo"></h1>
            <p class="parrafo"></p>
            <div class="condiciones">
              <span class="tasa"><b>TAZA: </b> <span ></span></span><br>
              <span class="plazo"><b>PLAZO: </b> <span></span></span><br>
              <span class="monto"><b>MONTO: </b> <span></span></span><br>
              <span  class="peridiosidad"><b>PERIDIOSIDAD: </b> <span></span></span><br>
              <span class="deudor-solidario"><b>DEUDOR SOLIDARIO: </b> <span ></span></span><br>
              <span class="garantia"><b>GARANTIA: </b> <span ></span></span><br>
               <span class="periodo-gracia"><b>PERIODO DE GRACIA: </b> <span ></span></span><br>
            </div> 
            <button class="btn btn-outline-success llenar-form"><i class="fa fa-play-circle" aria-hidden="true"></i> Simulador</button>
        </div>

        <div class="simulador" style="display: none;">
          <div class="parte1">
              <?php require_once 'form-contact-simulador.php'; ?>
          </div>
          <div class="parte2" style="display: none;">
            <?php require_once 'simulador.php'; ?>
          </div>
        </div>

        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="fa fa-times-circle" aria-hidden="true"></i> Cerrar</button>
      </div>
    </div>
  </div>
</div>
