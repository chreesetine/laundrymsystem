<?php
    $conn = new mysqli('localhost', 'root', '', 'laundry_db');

    //check connection
    if ($conn->connect_error) {
        echo json_encode(['status' => 'error', 'message' => 'Database connection failed']);
        exit;
    }
?>