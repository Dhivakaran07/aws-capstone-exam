<?php $conn = new mysqli("RDS_ENDPOINT", "admin", "password123", "streamline");if ($conn->connect_error) {
  die("DB Connection Failed");
}echo "Database Connected Successfully";?> 
