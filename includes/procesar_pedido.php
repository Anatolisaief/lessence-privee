<?php
include("db.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = $_POST["nombre_cliente"];
    $email = $_POST["email_cliente"];
    $telefono = $_POST["telefono_cliente"];
    $direccion = $_POST["direccion_cliente"];
    $perfume = $_POST["id_perfumes"];
    $cantidad = $_POST["cantidad"];
    $pago = $_POST["metodo_pago"];
    $comentarios = $_POST["comentarios"];

    $sql = "INSERT INTO pedidos (nombre_cliente, email_cliente, telefono_cliente, direccion_cliente, id_perfumes, cantidad,metodo_pago, comentarios, fecha_pedido)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, NOW())";

    $stmt = $conn->prepare($sql);


    $stmt->bind_param("sssssiss", $nombre, $email, $telefono, $direccion, $perfume, $cantidad, $pago, $comentarios);

    if ($stmt->execute()) {
        echo "¡Pedido enviado con éxito!";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
    $conn->close();
}
?>