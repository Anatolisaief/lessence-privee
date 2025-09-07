#  L’Essence Privée – Tienda de Perfumes Artesanales

Este es un sitio web dinámico para la tienda ficticia **L’Essence Privée**, especializada en perfumes artesanales. El sitio permite visualizar la colección de perfumes y realizar pedidos a través de un formulario conectado a una base de datos MySQL.

##  Estructura del Proyecto
```
├── css/
│ └── style.css # Estilos principales del sitio
├── images/
│ └── *.jpg # Imágenes usadas en el sitio
├── includes/
│ ├── db.php # Conexión a la base de datos
│ ├── header.php # Encabezado reutilizable
│ ├── footer.php # Pie de página reutilizable
│ ├── perfumes.php # Lógica para obtener perfumes de la BD
│ └── procesar_pedido.php # Procesamiento del formulario de pedidos
├── js/
│ └── script.js # Comportamientos interactivos del sitio
├── index.php # Página principal del sitio
├── lessence_privee.sql # Base de datos con tablas de perfumes y pedidos
└── README.md # Documentación del proyecto

```

##  Requisitos

- Servidor local (como XAMPP o MAMP)
- PHP 7.4 o superior
- MySQL / phpMyAdmin
- Navegador moderno


##  Instalación y configuración

1. **Clona o copia el proyecto en la carpeta `htdocs` de XAMPP:**

C:\xampp\htdocs\Proyecto

2. **Importa la base de datos:**

- Abre [phpMyAdmin](http://localhost/phpmyadmin)

- Crea una base de datos llamada: lessence_privee

- Importa el archivo `lessence_privee.sql` que contiene las tablas `perfumes` y `pedidos`

3. **Configurar conexión en `db.php`:**
Asegúrate de que el archivo includes/db.php tenga las credenciales correctas:

$servername = "localhost";
$username = ""; 
$password = ""; // Deja en blanco si no tienes contraseña en XAMPP
$database = "lessence_privee"; 


4. **Accede al sitio desde tu navegador:**

http://localhost/Proyecto/index.php


## Funcionalidades
- Mostrar perfumes dinámicamente desde la base de datos

- Diseño responsive y moderno con CSS personalizado

- Formulario de pedido con validación HTML5

- Registro de pedidos en la base de datos MySQL

- Protección básica de privacidad (aceptación de condiciones obligatoria)

- Componentes reutilizables con header.php y footer.php
