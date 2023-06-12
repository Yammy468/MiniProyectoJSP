<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="imagen/iconoBalon.jpg">
    <title>Login Page</title>
    <!--Made with love by Mutiullah Samim -->

    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <!--Custom styles-->
    <link rel="stylesheet" type="text/css" href="estilos/style02.css">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home</a>
            </li>
        </ul>
    </nav>
</header> <!-- Nav en la izquierda -->

<div class="container">
    <div class="d-flex justify-content-center h-100">

        <div class="card">

            <div class="card-header">
                <h2>Register</h2>
            </div> <!-- Cabecera del registro -->

            <div class="card-body">
                <form action="registerCheck.jsp" method="get">
                    <div class="input-group form-group">
                        <input name="socioID" type="text" class="form-control" required placeholder="Id (userName)"> <!-- usuaruio: id -->
                    </div>

                    <div class="input-group form-group">
                        <input name="nombre" type="text"class="form-control" required placeholder="Nombre"> <!-- nombre -->
                    </div>

                    <div class="input-group form-group">
                        <input name="estatura" type="text"class="form-control" required placeholder="Estatura (password)"> <!-- contraseña: estatura -->
                    </div>

                    <div class="input-group form-group">
                        <input name="edad" type="text"class="form-control" required placeholder="Edad"> <!-- edad -->
                    </div>

                    <div class="input-group form-group">
                        <input name="localidad" type="text"class="form-control" required placeholder="Localidad"> <!-- localidad -->
                    </div>

                    <div style="color: red;">
                        <p>
                            <%= session.getAttribute("mensaje") == null ? "" : session.getAttribute("mensaje") %>
                            <% session.removeAttribute("mensaje"); %>
                        </p>
                    </div> <!-- mensaje -->

                    <div class="form-group"> <!-- register -->
                        <input type="submit" value="Register" class="btn float-right login_btn">
                    </div>
                </form>
            </div> <!-- Body de la carta -->

            <div class="card-footer">
                <div class="d-flex justify-content-center links">
                    Already registered?<a href="login.jsp">Login now</a>
                </div>
            </div> <!-- Footer de la carta -->

        </div> <!-- card -->
    </div>
</div> <!-- container -->
</body>
</html>