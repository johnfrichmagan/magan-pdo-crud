<?php
// Establish database connection

$host = 'localhost';
$dbname = 'u593341949_db_rayon';
$username = 'u593341949_dev_rayon';
$password = '20221086Rayon';


$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve form data
$card_number = $_POST['card_number'];
$expiry_date = $_POST['expiry_date'];
$cvv = $_POST['cvv'];
$amount = $_POST['amount'];

// Insert payment details into database
$sql = "INSERT INTO payments (card_number, expiry_date, cvv, amount)
        VALUES ('$card_number', '$expiry_date', '$cvv', '$amount')";

if ($conn->query($sql) === TRUE) {
    // Redirect to success.php
    header("Location: logistic.php");
    exit;
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
