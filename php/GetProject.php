<?php

	$servername = "localhost";
	$username = "root";
	//$password = "5XkHJfZKLhdK";
	$password = "";

	try {
	  $conn = new PDO("mysql:host=$servername;dbname=portfolio", $username, $password);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	}
	catch(PDOException $e) {
	  echo "Connection to database failed: " . $e->getMessage();
  }

	if (isset($_POST['projectid'])) {
		$projectid=$_POST['projectid'];

		$sql = "SELECT * FROM project WHERE projectid = '$projectid'";
		$stmt = $conn->prepare($sql);
		$stmt->execute();

    $sql = "SELECT * FROM projectdetails WHERE projectid = '$projectid'";
		$stmt2 = $conn->prepare($sql);
		$stmt2->execute();

		$info = array();
		while($row = $stmt->fetch()){
			array_push($info,$row);
		}
    while($row = $stmt2->fetch()){
			array_push($info,$row);
		}
		echo json_encode($info);
	}
?>
