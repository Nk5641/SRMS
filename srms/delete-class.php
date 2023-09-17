<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "srms";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    /* set the PDO error mode to exception */
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

     /*sql to delete a record*/
    $sql = "DELETE FROM tblclasses WHERE id='" . $_GET["classid"] . "'";

    /*use exec() because no results are returned*/
    $conn->exec($sql);
   header("location:manage-classes.php");
    }
catch(PDOException $e)
    {
    echo $sql . "
" . $e->getMessage();
    }

$conn = null;
?>