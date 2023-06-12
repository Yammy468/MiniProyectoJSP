<%@ page import="com.daw1.baloncesto.SociosDB" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <link rel="icon" href="../imagen/iconoBalon.jpg">
    <title>Club de Baloncesto</title>
  </head>
  <body>
    <%
      SociosDB aux = new SociosDB("balon.db", "socio");

      int id = Integer.valueOf(request.getParameter("socioID"));
      String name = request.getParameter("nombre");
      int height = Integer.valueOf(request.getParameter("estatura"));
      int age = Integer.valueOf(request.getParameter("edad"));
      String location = request.getParameter("localidad");

      if (aux.create(id, name, height, age, location) == true) {
        out.println("Socio dado de alta correctamente");
      } else {
        out.println("Lo siento, el ID o Nombre ya existe.");
      }
      aux.disconnect();
    %>
    <br>
    <a href="admin.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span> Página principal</button>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
