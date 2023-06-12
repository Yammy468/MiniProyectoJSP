<%@ page import="com.daw1.baloncesto.SociosDB" %>

<%
    SociosDB aux = new SociosDB("balon.db", "socio");

    // Obtener los parámetros del formulario
    int id = Integer.valueOf(request.getParameter("socioID"));
    String name = request.getParameter("nombre");
    int height = Integer.valueOf(request.getParameter("estatura"));
    int age = Integer.valueOf(request.getParameter("edad"));
    String location = request.getParameter("localidad");

    if (aux.create(id, name, height, age, location) == true) {
        response.sendRedirect("register.jsp");
        session.setAttribute("mensaje", "Socio registrado correctamente");
    } else {
        session.setAttribute("mensaje", "Lo siento, el ID o Nombre ya existe.");
        response.sendRedirect("register.jsp");
    }

    aux.close();
%>