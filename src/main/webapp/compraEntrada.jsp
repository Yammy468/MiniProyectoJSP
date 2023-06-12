<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="icon" href="imagen/iconoBalon.jpg">

    <title>Club de Baloncesto</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="estilos/style.css" rel="stylesheet">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="compraEntrada.jsp">Home</a>
            </li>
        </ul> <!-- Nav en la izquierda -->

        <form class="form-inline mt-2 mt-md-0">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="profile.jsp">Hola, <%= session.getAttribute("socioID") %>!</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="profile.jsp">Profile</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="entradas.jsp">Ticket Purchase</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
            </ul>
        </form> <!-- Nav en la derecha -->
    </nav>
</header> <!-- header -->

<div class="carousel-item active">
    <img class="first-slide" src="imagen/entrante.gif" alt="First slide">
</div>

<hr class="featurette-divider"> <!-- linea de separación -->

<footer class="container">
    <p class="float-right"><a href="">Back to top</a></p>
    <p>&copy; Yana Zhu</p>
</footer> <!-- footer -->

</body>
</html>

