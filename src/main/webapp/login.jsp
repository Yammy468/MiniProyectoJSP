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
                <h2>Login</h2>
                <div class="d-flex justify-content-end social_icon">
                    <span><i class="fab fa-facebook-square"></i></span>
                    <span><i class="fab fa-google-plus-square"></i></span>
                    <span><i class="fab fa-twitter-square"></i></span>
                </div>
            </div> <!-- Cabecera del login con los logos de paginas web -->

            <div class="card-body">
                <form action="loginCheck.jsp" method="post">
                    <div class="input-group form-group"> <!-- imagen de usuario -->
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <input name="socioID" type="text" class="form-control" required placeholder="username"> <!-- usuaruio: id -->
                    </div>

                    <div class="input-group form-group"> <!-- imagen de llave -->
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <input name="estatura" type="password" class="form-control" required placeholder="password"> <!-- contraseña: estatura -->
                    </div>

                    <div style="color: red;">
                        <p>
                            <%= session.getAttribute("error") == null ? "" : session.getAttribute("error") %>
                            <% session.removeAttribute("error"); %>
                        </p>
                    </div> <!-- mensaje de error -->

                    <div class="form-group"> <!-- login -->
                        <input type="submit" value="Sign In" class="btn float-right login_btn">
                    </div>
                </form>

            </div> <!-- Body de la carta -->

            <div class="card-footer">
                <div class="d-flex justify-content-center links">
                    Don't have an account?<a href="register.jsp">Register</a>
                </div>
                <div class="d-flex justify-content-center">
                    <a href="#">Forgot your password?</a>
                </div>
            </div> <!-- Footer de la carta -->

        </div> <!-- card -->
    </div>
</div> <!-- container -->
</body>
</html>
