<?php
header('Content-Type: application/json');
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require '../database.php';

$response = ["success" => false];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents("php://input"), true);

    if (isset($data['id'])) {
        $customerId = $data['id'];

        // Archive the customer
        try {
            // Insert into `archived_customers`
            $archiveQuery = "
                INSERT INTO archived_customers (customer_id, customer_name, contact_number, address, archived_at)
                SELECT customer_id, customer_name, contact_number, address, NOW() 
                FROM customer WHERE customer_id = ?";
            $stmt = $conn->prepare($archiveQuery);
            $stmt->bind_param('i', $customerId);
            if (!$stmt->execute()) {
                throw new Exception("Failed to archive customer: " . $stmt->error);
            }
            $stmt->close();

            // Delete from `customer` table
            $deleteQuery = "DELETE FROM customer WHERE customer_id = ?";
            $deleteStmt = $conn->prepare($deleteQuery);
            $deleteStmt->bind_param('i', $customerId);
            if (!$deleteStmt->execute()) {
                throw new Exception("Failed to delete customer: " . $deleteStmt->error);
            }
            $deleteStmt->close();

            // Success response
            $response['success'] = true;
        } catch (Exception $e) {
            $response['error'] = $e->getMessage();
        }
    } else {
        $response['error'] = "Customer ID not provided.";
    }
} else {
    $response['error'] = "Invalid request method.";
}

echo json_encode($response);
?>
