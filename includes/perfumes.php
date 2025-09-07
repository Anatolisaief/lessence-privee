<?php
include("db.php");

function obtenerPerfumes() {
    global $conn; // usar conexión desde db.php
    
    $sql = "SELECT * FROM perfumes";
    $stmt = $conn->prepare($sql);
    
    $perfumes = [];
    
    if ($stmt->execute()) {
        $result = $stmt->get_result();
        while ($row = $result->fetch_assoc()) {
            $perfumes[] = $row;
        }
    } else {
        die("Error al ejecutar la consulta: " . $stmt->error);
    }
    
    $stmt->close();
    
    return $perfumes;
}
