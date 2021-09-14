<?php
  // required headers
  header("Access-Control-Allow-Origin: *");
  header("Content-Type: application/json; charset=UTF-8");
  // database connection will be here

  // include database and object files
  include_once '../config/database.php';
  include_once '../objects/product.php';

  $database = new Database();

  
  $db = $database->getConnection();

  // initialize object
  $product = new Product($db);

  $data = $product->read();

  $products_arr=array();

  if($data->num_rows > 0){
    $product_count = $data->num_rows;
    while($row = $data->fetch_assoc()) {
      $products_arr[] = $row;
    }
  }else {
    $product_count = 0;
    http_response_code(404);
  }

  echo json_encode(array(
    "records" => $products_arr,
    "product_count" => $product_count
  ));

  