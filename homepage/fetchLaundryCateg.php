<?php
header('Content-Type: application/json');

require '../database.php';

    $sql = "SELECT category_id, laundry_category_option FROM category";
    $result = $conn->query($sql);

    $categories = [];
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $categories[] = [
                'category_id' => $row['category_id'],
                'laundry_category_option' => $row['laundry_category_option']
            ];
        }
    }
    echo json_encode($categories);

$conn->close();
?>