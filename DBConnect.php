<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbDatabase= "loadsheddingdb";
// Create connection
$conn = new mysqli($servername, $username, $password,$dbDatabase);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully<br>";



?>