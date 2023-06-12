<%@ page import="com.daw1.baloncesto.SociosDB" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String user = request.getParameter("socioID");
  String password = request.getParameter("estatura");

  SociosDB company = new SociosDB("balon.db", "socio");
  int idUser = company.search(user);

  if (user.equals("0") && password.equals("123")) {
    session.setAttribute("socioID", user);
    session.setAttribute("estatura", password);
    response.sendRedirect("admin/admin.jsp");
  } else {
    if (idUser > 0) {
      if (company.verifica(idUser, password) == true) {
        session.setAttribute("socioID", user);
        response.sendRedirect("compraEntrada.jsp");
      }
    } else {
      session.setAttribute("error", "Usuario o contrasena incorrecto");
      response.sendRedirect("login.jsp");
    }

    company.close();
  }
%>
