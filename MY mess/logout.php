<?php
if($_SESSION[usertype]=='student'){
    unset($_SESSION['usertype']);
    unset($_SESSION['name']);
    unset($_SESSION['rollno']);
}else if($_SESSION[usertype]=='mess'){
  unset($_SESSION['usertype']);
  unset($_SESSION['messname']);
  unset($_SESSION['mess_id']);
}


unset($_SESSION['usertype']);
unset($_SESSION['logged']);

unset($_SESSION['loggedin']);
session_destroy();
header("Location: login.php");

?>
