<?php
require_once('dbconfig.php');

$id=$_REQUEST['id'];
$dept=$_REQUEST['dept'];
$email=$_REQUEST['email'];
$pass=$_REQUEST['pass'];
//echo $id." " .$dept." " .$email." " .$pass;



$sql = "INSERT INTO student (studentid, dept, email, password) VALUES ('$_REQUEST[id]', '$_REQUEST[dept]', '$_REQUEST[email]', '$_REQUEST[pass]')";


if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
    header("Location:signin.php");
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    header("Location:signup.php");
}

mysqli_close($conn);




?>