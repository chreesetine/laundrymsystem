<?php
    header('Content-Type: application/json');

    // $conn = new mysqli('localhost', 'root', '', 'laundry_db');

    // if ($conn->connect_error) {
    //     die("Connection failed: " . $conn->connect_error);
    // }

    require '../../database.php';

    $date_condition = '';
    $filter = $_POST['filter'] ?? 'all';
    $date = $_POST['date'] ?? null; 
    $start_date = $_POST['start_date'] ?? null; 
    $end_date = $_POST['end_date'] ?? null; 
    $month = $_POST['month'] ?? null;
    $year = $_POST['year'] ?? null; 
    
    switch ($filter) {
        case 'daily':
            if ($date) {
                $date_condition = "DATE(sr.service_request_date) = '$date'";
            } else {
                $date_condition = "DATE(sr.service_request_date) = CURDATE()";
            }
            break;
        case 'weekly':
            if ($start_date && $end_date) {
                $date_condition = "DATE(sr.service_request_date) BETWEEN '$start_date' AND '$end_date'";
            } else {
                $date_condition = "WEEK(sr.service_request_date) = WEEK(CURDATE())";
            }
            break;
        case 'monthly':
            $year = date('Y'); // Use the current year
            if ($month) {
                $date_condition = "MONTH(sr.service_request_date) = '$month' AND YEAR(sr.service_request_date) = '$year'";
            } else {
                $date_condition = "MONTH(sr.service_request_date) = MONTH(CURDATE()) AND YEAR(sr.service_request_date) = YEAR(CURDATE())";
            }
            break;
        case 'yearly':
            if ($year) {
                $date_condition = "YEAR(sr.service_request_date) = '$year'";
            } else {
                $date_condition = "YEAR(sr.service_request_date) = YEAR(CURDATE())";
            }
            break;
        case 'all':
            $date_condition = '1';
            break;
        default:
            $date_condition = '1';
            break;
    }
    
    $print_all = isset($_POST['print_all']) ? true : false;
    $records_per_page = $print_all ? PHP_INT_MAX : 10; // Set number to max to print all
    $page = isset($_POST['page']) ? (int)$_POST['page'] : 1;
    $offset = ($page - 1) * $records_per_page;
    
    // Total records query
    $total_query = "SELECT COUNT(DISTINCT t.transaction_id) AS total
                    FROM transaction t
                    JOIN service_request sr ON t.request_id = sr.request_id
                    JOIN customer c ON t.customer_id = c.customer_id
                    WHERE $date_condition"; 
    $total_result = $conn->query($total_query);
    if (!$total_result) {
        die("Error fetching total records: " . $conn->error);
    }
    $total_row = $total_result->fetch_assoc();
    $total_records = $total_row['total'];
    $total_pages = $print_all ? 1 : ceil($total_records / $records_per_page);
    
    // Query to fetch filtered transactions
    $query = "SELECT DISTINCT t.transaction_id, sr.service_request_date, c.customer_name, sr.laundry_service_option, sr.laundry_category_option,
                    sr.price, sr.weight, t.service_option_name, t.laundry_cycle, (t.delivery_fee + t.rush_fee) AS service_fee, 
                    t.total_amount, sr.order_status, sr.customer_order_id, t.customer_id
            FROM transaction t
            JOIN service_request sr ON t.request_id = sr.request_id
            JOIN customer c ON t.customer_id = c.customer_id
            WHERE $date_condition";
    
    if (!$print_all) {
        $query .= " LIMIT $offset, $records_per_page";
    }
    
    $result = $conn->query($query);
    if (!$result) {
        die("Error fetching transactions: " . $conn->error);
    }
    
    // Sum total revenue query
    $sum_query = "SELECT SUM(total_revenue) AS total_revenue
                FROM (
                    SELECT SUM(DISTINCT t.total_amount) AS total_revenue
                    FROM transaction t
                    JOIN service_request sr ON t.request_id = sr.request_id
                    WHERE $date_condition
                    GROUP BY sr.customer_order_id
                ) AS subquery";
    $sum_result = $conn->query($sum_query);
    if (!$sum_result) {
        die("Error calculating total revenue: " . $conn->error);
    }
    $sum_row = $sum_result->fetch_assoc();
    $total_revenue = number_format($sum_row['total_revenue'], 2);
    
    // Creating the table data
    $table_data = '';
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $table_data .= "<tr>
                                <td>{$row['transaction_id']}</td>
                                <td>{$row['service_request_date']}</td>
                                <td>{$row['customer_id']}</td>
                                <td>{$row['customer_order_id']}</td>
                                <td>{$row['customer_name']}</td>
                                <td>{$row['laundry_service_option']}</td>
                                <td>{$row['laundry_category_option']}</td>
                                <td>₱{$row['price']}</td>
                                <td>{$row['weight']}kg</td>
                                <td>{$row['service_option_name']}</td>
                                <td>{$row['laundry_cycle']}</td>
                                <td>₱{$row['service_fee']}</td>
                                <td>₱{$row['total_amount']}</td>
                                <td>{$row['order_status']}</td>
                            </tr>";
        }
    } else {
        $table_data = "<tr><td colspan='14'>No records found</td></tr>";
    }
    
    // Return data as JSON
    echo json_encode([
        'table_data' => $table_data,
        'total_revenue' => $total_revenue,
        'records_per_page' => $records_per_page,
        'total_pages' => $total_pages,
        'page' => $page
    ]);
?>