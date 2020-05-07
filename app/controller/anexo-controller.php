<?php 
session_start();
	require '../conexion/conexion.php';
	$file = '';
	$data = array();


	for ($i=1; $i <=2 ; $i++) {
		if($i==1){
			$file = 'certificacion';
		}else if($i==2){
			$file = 'anexo';
		}

		$nombre=$_FILES[$file]['name'];
		$guardado=$_FILES[$file]['tmp_name'];

		$data[$file] = $nombre;

		if(move_uploaded_file($guardado, 'archivos/'.$nombre)){}	
	}
	$sql = 'INSERT INTO certificaciones (nombres, documento, anexo, certificacion) VALUES ("'.$_POST['nombres'].'","'.$_POST['documento'].'","'.$data['anexo'].'","'.$data['certificacion'].'")';
	$query = mysqli_query($conexion, $sql);

	$_SESSION['success'] = 'archivos subidos correctamente.';
	header('Location: ../../anexos.php');
		
 ?>