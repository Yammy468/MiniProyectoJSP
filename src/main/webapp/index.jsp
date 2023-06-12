<!doctype html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <link rel="icon" href="imagen/iconoBalon.jpg">

  <title>Club de Baloncesto</title>

  <link rel="canonical" href="https://getbootstrap.com/docs/4.1/examples/carousel/">

  <!-- Bootstrap core CSS -->
  <link href="estilos/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="estilos/style.css" rel="stylesheet">
</head>
<body>

<header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="">Baloncesto</a>

    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="">Home</a>
        </li>
      </ul> <!-- Nav en la izquierda -->

      <form class="form-inline mt-2 mt-md-0">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="login.jsp">Login</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="register.jsp">Register</a>
          </li>
        </ul>
      </form> <!-- Nav en la derecha -->

    </div>
  </nav>
</header> <!-- header -->

<main role="main"> <!-- Contenido principal de la pagina (TOTAL) -->

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol> <!-- Sub Navegación -->

    <div class="carousel-inner">
      <div class="carousel-item active">
        <img class="first-slide" src="imagen/clubBalon.jpg" alt="First slide">
        <div class="container">
          <div class="carousel-caption text-left" style="color: cyan; font-weight: bold; text-shadow: 2px 2px 0 #000">
            <h1>Club de baloncesto.</h1>
            <p>Bienvenidos al Club de Baloncesto! Un lugar apasionado para el crecimiento personal y la competencia en el baloncesto. Unete y alcanza tu maximo potencial en nuestra temporada llena de accion.</p>
            <p><a class="btn btn-lg btn-primary" href="login.jsp" role="button">Sign up</a></p>
          </div>
        </div>
      </div> <!-- Slide 1 -->

      <div class="carousel-item">
        <img class="second-slide" src="imagen/baloncesto.avif" alt="Second slide">
        <div class="container">
          <div class="carousel-caption" style="color: cyan; font-weight: bold; text-shadow: 2px 2px 0 #000">
            <h1>Baloncesto.</h1>
            <p>El baloncesto: un deporte dinamico, emocionante y colaborativo, donde equipos compiten por anotar puntos lanzando la pelota al aro contrario.</p>
            <p><a class="btn btn-lg btn-primary" href="#marketing" role="button">Learn more</a></p>
          </div>
        </div>
      </div> <!-- Slide 2 -->

      <div class="carousel-item">
        <img class="third-slide" src="imagen/masSobreBalon.jpg" alt="Third slide">
        <div class="container">
          <div class="carousel-caption text-right" style="color: cyan; font-weight: bold; text-shadow: 2px 2px 0 #000">
            <h1>Mas sobre baloncesto.</h1>
            <p>El secreto del baloncesto: habilidades, trabajo duro y juego en equipo.</p>
            <p><a class="btn btn-lg btn-primary" href="#featurette1" role="button">Browse gallery</a></p>
          </div>
        </div>
      </div> <!-- Slide 3 -->
    </div>

    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a> <!-- Navegación a traves de FLECHAS -->
  </div> <!-- myCarousel -->



  <!-- Contenidos del marketing -->

  <div id="marketing" class="container marketing">

    <!-- Las 3 columnas debajo del baloncesto -->
    <div class="row">
      <div class="col-lg-4">
        <img class="rounded-circle" src="imagen/manejoBalon.avif" alt="Generic placeholder image" width="140" height="140">
        <h2>Manejo del balon</h2>
        <p>El manejo de balon en el baloncesto es una habilidad crucial para controlar y manipular la pelota con confianza y precision, permitiendo a los jugadores avanzar, sortear defensores y crear oportunidades ofensivas.</p>
        <p><a class="btn btn-secondary" href="#featurette1" role="button">View details &raquo;</a></p>
      </div><!-- Columna 1 -->

      <div class="col-lg-4">
        <img class="rounded-circle" src="imagen/tiroBalon.webp" alt="Generic placeholder image" width="140" height="140">
        <h2>Tiro preciso</h2>
        <p>El tiro preciso en el baloncesto es una habilidad esencial que permite a los jugadores lanzar la pelota al aro con precision, anotar puntos y contribuir al exito del equipo. Requiere tecnica, concentracion y practica constante para lograr resultados efectivos en el juego.</p>
        <p><a class="btn btn-secondary" href="#featurette2" role="button">View details &raquo;</a></p>
      </div><!-- Columna 2 -->

      <div class="col-lg-4">
        <img class="rounded-circle" src="imagen/saltoBalon.webp" alt="Generic placeholder image" width="140" height="140">
        <h2>Capacidad de salto y rebote</h2>
        <p>La capacidad de salto y rebote en el baloncesto es esencial para competir por los rebotes, generar segundas oportunidades ofensivas y limitar las posibilidades de anotacion del equipo contrario.</p>
        <p><a class="btn btn-secondary" href="#featurette3" role="button">View details &raquo;</a></p>
      </div><!-- Columna 3 -->
    </div><!-- row -->


    <!-- Comienzo de los contenidos -->

    <hr id="featurette1" class="featurette-divider"> <!-- Ralla de separación -->

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">El manejo del balon. <span class="text-muted">(Dribling).</span></h2>
        <p class="lead">El manejo del balon en el baloncesto se refiere a la habilidad de controlar y driblar la pelota de manera efectiva. Implica movimientos como el crossovers, entrepiernas y detras de la espalda, permitiendo a los jugadores avanzar en la cancha, evadir defensores y crear oportunidades de pase y anotacion. Es una habilidad fundamental que requiere practica y coordinacion para mejorar en el juego.</p>
      </div>
      <div class="col-md-5">
        <img class="featurette-image img-fluid mx-auto" src="imagen/manejamientoBalon.jpg" alt="Generic placeholder image">
      </div>
    </div> <!-- Contenido 1 -->

    <hr id="featurette2" class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading">El tiro preciso. <span class="text-muted">(Lanzamiento).</span></h2>
        <p class="lead">El tiro preciso en el baloncesto es la habilidad de lanzar la pelota al aro con exactitud. Implica una combinacion de tecnica, postura, coordinacion y concentracion para lograr resultados consistentes y anotar puntos de manera efectiva durante el juego. La practica constante y el dominio de esta habilidad son fundamentales para convertirse en un tirador confiable en el baloncesto.</p>
      </div>
      <div class="col-md-5 order-md-1">
        <img class="featurette-image img-fluid mx-auto" src="imagen/lanzamientoBalon.jpg" alt="Generic placeholder image">
      </div>
    </div> <!-- Contenido 2 -->

    <hr id="featurette3" class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">La capacidad de salto y rebote. <span class="text-muted">(Salto/Rebote).</span></h2>
        <p class="lead">La capacidad de salto y rebote en el baloncesto es crucial para competir por los rebotes tanto en defensa como en ataque. Implica un buen salto vertical, habilidades de anticipacion y posicionamiento adecuado para obtener ventaja en el juego de rebote. Esta habilidad permite generar segundas oportunidades ofensivas y limitar las posibilidades de anotacion del equipo contrario.</p>
      </div>
      <div class="col-md-5">
        <img class="featurette-image img-fluid mx-auto" src="imagen/saltoReboteBalon.jpg" alt="Generic placeholder image">
      </div>
    </div> <!-- Contenido 3 -->

    <hr class="featurette-divider">

  </div> <!-- container marketing -->


  <!-- FOOTER -->
  <footer class="container">
    <p class="float-right"><a href="">Back to top</a></p>
    <p>&copy; Yana Zhu</p>
  </footer>
</main>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="estilos/popper.min.js"></script>
<script src="estilos/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="estilos/holder.min.js"></script>
</body>
</html>

