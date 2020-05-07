<?php
include_once("vendor/autoload.php");
$nombres = $_POST['nombres'];
$documento = $_POST['documento'];
$valor = $_POST['valor'];


if(!empty($_POST['valor'])){
        MercadoPago\SDK::setClientId("7082211134398694");
        MercadoPago\SDK::setClientSecret("DMGkWPOrqmyL6ZxqNQ2k8dth4L1GtMOE");

        //MercadoPago\SDK::setPublicKey("TEST-996ce4d2-04ca-4114-810f-0b725a1a0cd4");
        //MercadoPago\SDK::setAccessToken("TEST-587520279526039-020619-b11f8cd63bc6920b6add826ebeaa79ce-519601622");

        MercadoPago\SDK::setPublicKey("APP_USR-9f4b094a-5a6d-4ddc-86cf-9db231498566d");
       MercadoPago\SDK::setAccessToken("APP_USR-7082211134398694-032600-fa79517d5f1a44b5478b2c6fe358e186-538036743");

       $preference = new MercadoPago\Preference();

       $produto1 = ['Pago', 1, '109,90'];
        
        # Building an item
        

        $item2 = new MercadoPago\Item();
        $item2->id = "00002";
        $item2->title = $produto1[0]; 
        $item2->quantity = $produto1[1];
        $item2->unit_price = $_POST['valor'];

        $url = 'https://www.cooservicios.com.co';


        
        $preference->items = array($item2);
        $preference->back_urls = array(
          "success" => $url,
          "failure" => $url,
          "pending" => $url
        );
        
        $preference->save(); # Save the preference and send the HTTP Request to create
        
        # Return the HTML code for button
        
        echo '<meta http-equiv="refresh" content="0;url='.$preference->init_point.'" />';
       //echo '<meta http-equiv="refresh" content="0;url='.$preference->init_point.'" />';
 }
?>

