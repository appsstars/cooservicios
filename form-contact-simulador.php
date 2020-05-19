<?php 
require_once 'app/conexion/conexion.php';
if(!empty($_POST['nombres'])){
	$linea = $_POST['id_linea'];
	$nombres = $_POST['nombres'];
	$documento = $_POST['documento'];
	$telefono = $_POST['telefono'];
	$direccion = $_POST['direccion'];

	$sql = "INSERT INTO form_simulador (id_linea, nombres, documento, telefono, direccion) VALUES ('".$linea."','".$nombres."','".$documento."','".$telefono."','".$direccion."')";
	$query = mysqli_query($conexion, $sql);
	echo 'creado con exito';
}

?>

<form id="form-contact-simulador" >
	<div class="row">
		<div class="col-md-12">
			<h2 class="name-linea"></h2><br>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<span>Nombres y/o Razon social</span>
				<input type="hidden" name="id_linea">
				<input type="hidden" name="linea">
				<input type="text" class="form-control" name="nombres">
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<span>Documento y/o Nit</span>
				<input type="text" class="form-control" name="documento">
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<span>Telefono</span>
				<input type="text" class="form-control" name="telefono">
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<span>Dirección</span>
				<input type="text" class="form-control" name="direccion">
			</div>
		</div>
		<div class="col-md-6">
			<button class="btn btn-outline-success"><i class="fa fa-play-circle" aria-hidden="true"></i> Enviar/iniciar simulador</button>
		</div>
	</div>
</form>