<?php
header('Content-Type: application/json');

    require '../database.php';

    $sql = "SELECT option_id, option_name FROM service_options";
    $result = $conn->query($sql);

    $service_option = [];
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $service_option[] = [
                'option_id' => $row['option_id'],
                'option_name' => $row['option_name']
            ];
        }
        $service_option = array_slice($service_option, 0, 2); //limit to 2 options
    }
    echo json_encode($service_option);

$conn->close();
?>