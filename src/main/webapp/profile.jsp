<%@ page import="java.sql.Connection" %>
<%@ page import="com.daw1.baloncesto.HelloServlet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
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
    <title>Club de Baloncesto - Profile</title>
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


<div class="container">
    <div class="d-flex justify-content-center h-100">

        <div class="card">
            <div class="profileImg" style="float: left; height: 445px; padding: 3em 2em">
                <img class="rounded-circle" src="imagen/perfil.jpg" alt="Generic placeholder image" width="140" height="140">
            </div>
        </div> <!-- Primera card -->

        <div class="card">

            <div class="card-header">
                <h2>Profile</h2>
            </div> <!-- Cabecera del registro -->

            <div class="card-body">

                <%
                    Connection conexion = HelloServlet.connect();
                    Statement s = conexion.createStatement();
                    ResultSet listado = s.executeQuery ("SELECT * FROM socio WHERE socioID=" + session.getAttribute("socioID"));
                %>

                <form method="get" action="profileCheck.jsp">
                    <div class="form-group">
                        <label>&nbsp;&nbsp;ID (user):&nbsp;</label><input type="text" size="5" name="socioID" value="<%= listado.getString("socioID") %>" readonly>
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Nombre:&nbsp;</label><input type="text" size="32" name="nombre" value="<%= listado.getString("nombre") %>" readonly>
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Estatura cm (password):&nbsp;</label><input type="text" size="5" name="estatura" value="<%= listado.getString("estatura") %>" readonly>
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Edad:&nbsp;</label><input type="text" size="5" name="edad" value="<%= listado.getString("edad") %>" readonly>
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Localidad:&nbsp;</label><input type="text" name="localidad" size="18" value="<%= listado.getString("localidad") %>" readonly>
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Tickets:&nbsp;</label><input type="text" name="numEntradas" size="18" value="<%= listado.getString("numEntradas") %>" readonly>
                    </div>

                </form>
                <%
                    listado.close();
                %>
            </div> <!-- Body de la carta -->
        </div> <!-- Segunda card -->

    </div>
</div> <!-- container -->
</body>
</html>