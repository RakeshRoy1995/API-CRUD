<?php

header("content-type: application/json");

  $request=$_SERVER['REQUEST_METHOD'];

  switch ($request) {
  	case 'GET':
  		getmethod();
  		break;
  	case 'POST':
  		$data = json_decode(file_get_contents('php://input'),true);
  		postmethod($data);
  		break;
  	case 'PUT':
  		$data = json_decode(file_get_contents('php://input'),true);
  		putmethod($data);
  		break;
  	case 'DELETE':
  		$data = json_decode(file_get_contents('php://input'),true);
  		deletemethod($data);
  		break;			
  	
  	default:
  		echo '{"name": ""data not found"}';
  		break;
  }
  function getmethod(){
  	include 'db.php';
   
   $sql = "SELECT * FROM rakesh";
   $result = mysqli_query($con , $sql);
   if (mysqli_num_rows($result)>0) {
   	$row = array();
   	while ($arr = mysqli_fetch_assoc($result)) {
   		$row["result"][] = $arr;
   	}
   	echo json_encode($row);
   }
   else{
   	echo '{"result": ""data not found"}';
   }

  }


   function postmethod($data){
  	include 'db.php';
  	$name = $data['name'];
  	$email = $data['email'];
   
   $sql = "INSERT INTO rakesh(name,email) VALUE ('$name' , '$email')";
   if (mysqli_query($con,$sql)) {
   	echo '{"result": "Successfully Inserted"}';
   }
   else{
   	echo '{"result": ""Not Inserted"}';
   }

  }


   function putmethod($data){
  	include 'db.php';
  	$id   = $data['id'];
  	$name = $data['name'];
  	$email = $data['email'];
   
   $sql = "UPDATE rakesh SET name = '$name' , email = '$email' WHERE id = $id";
   if (mysqli_query($con,$sql)) {
   	echo '{"result": "Successfully Updated"}';
   }
   else{
   	echo '{"result": ""Not Updated"}';
   }

  }


  function deletemethod($data){
  	include 'db.php';
  	$id   = $data['id'];
   
   $sql = "DELETE FROM rakesh WHERE id = $id";
   if (mysqli_query($con,$sql)) {
   	echo '{"result": "Successfully DELETED"}';
   }
   else{
   	echo '{"result": ""Not DELETED"}';
   }

  }

?>