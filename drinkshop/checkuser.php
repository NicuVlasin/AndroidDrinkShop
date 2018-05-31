<?php
/**
 * Created by PhpStorm.
 * User: Nicu
 * Date: 30/05/2018
 * Time: 17:19
 */

require_once 'db_functions.php';
$db = new DB_Functions();

/*
 * Endpoint : http://<domain>/drinkshop/checkuser.php
 * Method : POST
 * Params : phone
 * RESULT : JSON
 */
$response = array();
if(isset($_POST['phone']))
{
    $phone = $_POST['phone'];

    if($db -> checkExistsUser($phone))
    {
        $response["exists"] = TRUE;
        echo json_encode($response);
    }
    else
    {
        $response["exists"] = FALSE;
        echo json_encode($response);
    }

}
else
{
    $response["error_msg"] = "Required parameter (phone) is missing!";
    echo json_decode($response);
}