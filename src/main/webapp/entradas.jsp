<%@ page import="com.daw1.baloncesto.SociosDB" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <link rel="icon" href="imagen/iconoBalon.jpg">
    <meta charset="UTF-8">
    <title>Club de Baloncesto - Ticket Purchase</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="compraEntrada.jsp">Home</a>
            </li>
        </ul>
    </nav>
</header> <!-- Nav en la izquierda -->


<script>
    document.addEventListener('DOMContentLoaded', () => {

        // Variables
        const baseDeDatos = [
            {
                id: 1,
                nombre: 'Torneo de Ciudad',
                precio: 47.6,
                imagen: 'imagen/entrada04.jpg'
            },
            {
                id: 2,
                nombre: 'Espana VS ???',
                precio: 21.2,
                imagen: 'imagen/entrada02.jpg'
            },
            {
                id: 3,
                nombre: 'FinalFour',
                precio: 32.5,
                imagen: 'imagen/entrada03.jpg'
            },
            {
                id: 4,
                nombre: 'Basketball Championship',
                precio: 16.5,
                imagen: 'imagen/entrada01.webp'
            }

        ];

        let carrito = [];
        const divisa = '€';
        const DOMitems = document.querySelector('#items');
        const DOMcarrito = document.querySelector('#carrito');
        const DOMtotal = document.querySelector('#total');
        const DOMtotalItems = document.querySelector('#totalItems');
        const DOMbotonVaciar = document.querySelector('#boton-vaciar');
        const miLocalStorage = window.localStorage;

        // Funciones

        /**
         * Dibuja todos los productos a partir de la base de datos. No confundir con el carrito
         */
        function renderizarProductos() {
            baseDeDatos.forEach((info) => {
                // Estructura
                const miNodo = document.createElement('div');
                miNodo.classList.add('card', 'col-sm-4');
                // Body
                const miNodoCardBody = document.createElement('div');
                miNodoCardBody.classList.add('card-body');
                // Titulo
                const miNodoTitle = document.createElement('h5');
                miNodoTitle.classList.add('card-title');
                miNodoTitle.textContent = info.nombre;
                // Imagen
                const miNodoImagen = document.createElement('img');
                miNodoImagen.classList.add('img-fluid');
                miNodoImagen.setAttribute('src', info.imagen);
                // Precio
                const miNodoPrecio = document.createElement('p');
                miNodoPrecio.classList.add('card-text');
                miNodoPrecio.textContent = info.precio + divisa;
                // Boton
                const miNodoBoton = document.createElement('button');
                miNodoBoton.classList.add('btn', 'btn-primary');
                miNodoBoton.textContent = '+';
                miNodoBoton.setAttribute('marcador', info.id);
                miNodoBoton.addEventListener('click', anyadirProductoAlCarrito);
                // Insertamos
                miNodoCardBody.appendChild(miNodoImagen);
                miNodoCardBody.appendChild(miNodoTitle);
                miNodoCardBody.appendChild(miNodoPrecio);
                miNodoCardBody.appendChild(miNodoBoton);
                miNodo.appendChild(miNodoCardBody);
                DOMitems.appendChild(miNodo);
            });
        }

        /**
         * Evento para añadir un producto al carrito de la compra
         */
        function anyadirProductoAlCarrito(evento) {
            // Anyadimos el Nodo a nuestro carrito
            carrito.push(evento.target.getAttribute('marcador'))
            // Actualizamos el carrito
            renderizarCarrito();
            // Actualizamos el LocalStorage
            guardarCarritoEnLocalStorage();
        }

        /**
         * Dibuja todos los productos guardados en el carrito
         */
        function renderizarCarrito() {
            // Vaciamos todo el html
            DOMcarrito.textContent = '';
            // Quitamos los duplicados
            const carritoSinDuplicados = [...new Set(carrito)];
            // Generamos los Nodos a partir de carrito
            carritoSinDuplicados.forEach((item) => {
                // Obtenemos el item que necesitamos de la variable base de datos
                const miItem = baseDeDatos.filter((itemBaseDatos) => {
                    // ¿Coincide las id? Solo puede existir un caso
                    return itemBaseDatos.id === parseInt(item);
                });
                // Cuenta el número de veces que se repite el producto
                const numeroUnidadesItem = carrito.reduce((total, itemId) => {
                    // ¿Coincide las id? Incremento el contador, en caso contrario no mantengo
                    return itemId === item ? total += 1 : total;
                }, 0);
                // Creamos el nodo del item del carrito
                const miNodo = document.createElement('li');
                miNodo.classList.add('list-group-item', 'text.left', 'mx-2');
                miNodo.textContent = numeroUnidadesItem + " x " + miItem[0].nombre + " - " + miItem[0].precio + "€";
                // Boton de borrar
                const miBoton = document.createElement('button');
                miBoton.classList.add('btn', 'btn-danger', 'mx-6');
                miBoton.textContent = 'X';
                miBoton.style.marginLeft = '1rem';
                miBoton.dataset.item = item;
                miBoton.addEventListener('click', borrarItemCarrito);
                // Mezclamos nodos
                miNodo.appendChild(miBoton);
                DOMcarrito.appendChild(miNodo);
            });
            // Renderizamos el precio total en el HTML
            DOMtotal.textContent = calcularTotal();
            // Mostrar cantidad total de items
            DOMtotalItems.textContent = calcularTotalItems();

            // Asignar el valor total de entradas a una variable oculta en el formulario
            document.getElementById('numEntradas').value = calcularTotalItems();
        }

        /**
         * Evento para borrar un elemento del carrito
         */
        function borrarItemCarrito(evento) {
            // Obtenemos el producto ID que hay en el boton pulsado
            const id = evento.target.dataset.item;
            // Borramos todos los productos
            carrito = carrito.filter((carritoId) => {
                return carritoId !== id;
            });
            // volvemos a renderizar
            renderizarCarrito();
            // Actualizamos el LocalStorage
            guardarCarritoEnLocalStorage();
        }

        /**
         * Calcula el precio total teniendo en cuenta los productos repetidos
         */
        function calcularTotal() {
            // Recorremos el array del carrito
            return carrito.reduce((total, item) => {
                // De cada elemento obtenemos su precio
                const miItem = baseDeDatos.filter((itemBaseDatos) => {
                    return itemBaseDatos.id === parseInt(item);
                });
                // Los sumamos al total
                return total + miItem[0].precio;
            }, 0).toFixed(2);
        }

        /**
         * Calcula la cantidad total de items en el carrito
         */
        function calcularTotalItems() {
            return carrito.length;
        }

        /**
         * Varia el carrito y vuelve a dibujarlo
         */
        function vaciarCarrito() {
            // Limpiamos los productos guardados
            carrito = [];
            // Renderizamos los cambios
            renderizarCarrito();
            // Borra LocalStorage
            localStorage.clear();

        }

        function guardarCarritoEnLocalStorage () {
            miLocalStorage.setItem('carrito', JSON.stringify(carrito));
        }

        function cargarCarritoDeLocalStorage () {
            // ¿Existe un carrito previo guardado en LocalStorage?
            if (miLocalStorage.getItem('carrito') !== null) {
                // Carga la información
                carrito = JSON.parse(miLocalStorage.getItem('carrito'));
            }
        }

        // Eventos
        DOMbotonVaciar.addEventListener('click', vaciarCarrito);

        // Inicio
        cargarCarritoDeLocalStorage();
        renderizarProductos();
        renderizarCarrito();
    });
</script>

<div class="container">
    <br><br><br><br>
    <div class="row">
        <!-- Elementos generados a partir del JSON -->
        <main id="items" class="col-sm-8 row"></main>
        <!-- Carrito -->
        <aside class="col-sm-4">
            <h2>Carrito</h2>
            <!-- Elementos del carrito -->
            <ul id="carrito" class="list-group"></ul>
            <hr>
            <!-- Precio total -->

            <form action="operacion.jsp" method="post">
                <input type="hidden" id="socioID" name="socioID" value="<%= session.getAttribute("socioID")%>" />
                <input type="hidden" id="numEntradas" name="numEntradas" value=""><p class="text-left">Ticket: <span id="totalItems"></span></p></input>
                <p class="text-right">Total: <span id="total"></span>&euro;</p>
                <button type="submit" class="btn btn-success"></span>Aceptar</button><br><br>
                <button id="boton-vaciar" class="btn btn-danger">Vaciar</button>
            </form>
        </aside>
    </div>
</div>
</body>
</html>
