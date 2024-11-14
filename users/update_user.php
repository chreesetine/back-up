<?php
require_once('users_db.php');
header('Content-Type: application/json');

$response = array('success' => false);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $user_id = $_POST['user_id'];
    $username = $_POST['username'];
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $user_role = $_POST['user_role'];

    // Validate input
    if (empty($user_id) || empty($username) || empty($first_name) || empty($last_name) || empty($user_role)) {
        $response['error'] = 'All fields are required.';
    } else {
        // Update user in the database
        $stmt = $conn->prepare("UPDATE users SET username = ?, first_name = ?, last_name = ?, user_role = ? WHERE user_id = ?");
        $stmt->bind_param("ssssi", $username, $first_name, $last_name, $user_role, $user_id);

        if ($stmt->execute()) {
            $response['success'] = true;
        } else {
            $response['error'] = 'Update failed: ' . $conn->error;
        }

        $stmt->close();
    }
    echo json_encode($response);
    exit();
} else {
    $response['error'] = 'Invalid request method.';
    echo json_encode($response);
    exit();
}
