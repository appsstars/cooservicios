<?php 
session_start();
	require 'app/conexion/conexion.php';
 // Count total files
 $countfiles = count($_FILES['archivo']['name']);
 
 // Looping all files
 $array = '';
 for($i=0;$i<$countfiles;$i++){
   $filename = $_FILES['archivo']['name'][$i];
   $fecha = date('H:i:s');
   $array = $array.$fecha.'-'.$filename.',';
   
   // Upload file
   move_uploaded_file($_FILES['archivo']['tmp_name'][$i],'docs/formatos/uploads/'.$fecha.'-'.$filename);
    
 }



	$sql = 'INSERT INTO archivos (nombres, documento, url) VALUES ("'.$_POST['nombres'].'","'.$_POST['documento'].'","'.$array.'")';
	$query = mysqli_query($conexion, $sql);

	$_SESSION['success'] = 'archivos subidos correctamente.';
	header('Location: anexos');
		
 ?>