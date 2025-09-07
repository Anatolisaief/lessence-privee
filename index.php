<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <?php
     include("includes/header.php"); 
     include("includes/perfumes.php");

    $perfumes = obtenerPerfumes();
    
    ?>

    <section id="nosotros">
        <h2>Sobre Nosotros</h2>
        <div class="imagenes_p">
            <p>
                Fundada en 2024 en un pequeño atelier escondido entre los callejones perfumados de Grasse,
                <strong>L’Essence Privée</strong> nació del deseo de crear fragancias que no siguen las tendencias, sino que cuentan
                historias. Cada perfume es una pieza única, creada artesanalmente con materias primas nobles y una
                inspiración íntima. Creemos que un aroma no debe gritar, sino susurrar — y ese susurro debe ser
                inolvidable.
                <br><br>
                Nuestra misión es ofrecer una experiencia olfativa personal, profunda y reservada solo para aquellos que
                se
                atreven a buscar lo invisible. En cada frasco hay un viaje, una emoción, una memoria capturada en
                esencia.
            </p>
            <div class="nosotros-imagenes">
                <img src="images/nosotros6.jpg" alt="">
                <img src="images/nosotros7.jpg" alt="">
                <img src="images/nosotros5.jpg" alt="">
            </div>
        </div>

    </section>

    <section id="perfumes">
        <h2>Nuestra Colección</h2>
        <div class="perfumes">
           <?php if (count($perfumes) > 0): ?>
            <?php foreach ($perfumes as $index => $perfume): ?>
                 <!-- card reverse -->
                <div class="card <?php echo ($index % 2 !== 0) ? 'reverse' : ''; ?>"> 
                    <div class="card-imagen">
                        <?php if (!empty($perfume['imagen_perfumes'])): ?>
                            <img src="<?php echo htmlspecialchars($perfume['imagen_perfumes']); ?>" alt="Imagen del perfume" width="200">
                        <?php endif; ?>
                    </div>
                    <div class="card-content">
                        <h3><?php echo htmlspecialchars($perfume['nombre_perfumes']); ?></h2>
                        <p class="precio">$<?php echo number_format($perfume['precio_perfumes'], 2); ?> / 100ml</p>
                        <p><?php echo nl2br($perfume['descripcion_perfumes']); ?></p>
                    </div>
                </div>
            <?php endforeach; ?>
        <?php else: ?>
            <p>No hay perfumes disponibles.</p>
        <?php endif; ?>
        </div>
    </section>

    <section id="comprar">
    <h2>Haz tu pedido</h2>
    <form method="POST" action="includes/procesar_pedido.php">
        <div class="columnas">
            <div class="primera_columna">
                <label for="nombre_cliente">Nombre completo:</label>
                <input type="text" id="nombre_cliente" name="nombre_cliente" required>

                <label for="email_cliente">Correo electrónico:</label>
                <input type="email" id="email_cliente" name="email_cliente" required>

                <label for="telefono_cliente">Teléfono:</label>
                <input type="tel" id="telefono_cliente" name="telefono_cliente" pattern="[0-9]{9,15}" placeholder="Ej: 1234567890">

                <label for="direccion_cliente">Dirección de envío:</label>
                <input type="text" id="direccion_cliente" name="direccion_cliente" required placeholder="Calle, número, ciudad, código postal">
            </div>
            <div class="segunda_columna">
                <label for="id_perfumes">Perfume elegido:</label>
                <select id="id_perfumes" name="id_perfumes" required>
                    <option value="">Selecciona un perfume</option>
                    <option value="1">Crimson Éclat</option>
                    <option value="2">Azure Veil</option>
                    <option value="3">Magenta Bloom</option>
                    <option value="4">Violet Nocturne</option>
                    <option value="5">Verdant Muse</option>
                </select>

                <label for="cantidad">Cantidad:</label>
                <input type="number" id="cantidad" name="cantidad" min="1" required>

                <label for="metodo_pago">Método de pago:</label>
                <select id="metodo_pago" name="metodo_pago" required>
                    <option value="">Selecciona uno</option>
                    <option value="tarjeta">Tarjeta de crédito/débito</option>
                    <option value="paypal">PayPal</option>
                    <option value="transferencia">Transferencia bancaria</option>
                </select>

                <label for="comentarios">Comentarios adicionales:</label>
                <input type="text" id="comentarios" name="comentarios" placeholder="Especificaciones, notas de entrega...">
            </div>
        </div>
        <div class="terminos">
            <input type="checkbox" name="acepta_privacidad" id="acepta_privacidad" required>
            <label for="acepta_privacidad">Acepto la <a href="#">política de privacidad</a></label>
        </div>
        <input type="submit" value="Realizar pedido">
    </form>
    </section>

    <?php include("includes/footer.php"); ?>

    <script src="js/script.js"></script>
</body>

</html>