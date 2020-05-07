<?php

 class conectar{

	 private $servidor = "localhost" ;

	 private $usuario = "cooserv1_web";

	 private $password = "cooserv1_web#2020";

	 private $db = "cooserv1_web";



	public function conexion(){

		$conexion = mysqli_connect($this->servidor,

								$this->usuario,

								$this->password,

								$this->db);



		return $conexion;

	}



 }

?>