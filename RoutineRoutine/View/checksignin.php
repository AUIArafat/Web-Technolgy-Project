<?php
	require_once('dbconfig.php');
	$id=$_REQUEST['id'];
	$psw=$_REQUEST['psw'];
	echo $id ." " .$psw;

	

	$sql = "SELECT studentid,password FROM student WHERE studentid='$_REQUEST[id]'";
//echo $sql."<br/>";
$result = mysqli_query($conn, $sql)or die(mysqli_error());


    while($row = mysqli_fetch_assoc($result)) {
		if($row["studentid"]==$_REQUEST["id"] && $row["password"]==$_REQUEST["psw"]){
			
			//$ar[$row["name"]]=$row["name"];
			//echo $row["name"]."<br>";
			header("Location:makeroutine.php");
		}
    	else{
    		header("Location:signin.php");
    	}
    }
    


?>