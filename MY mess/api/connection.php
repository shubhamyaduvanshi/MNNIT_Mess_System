<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "";
$dm="mess_database";
$conn = new mysqli($servername, $username, $password,$dm); // MySQLi functions allows you to access MySQL database servers.
function escape($s){
    return mysql_escape_string($s);
}
?>
