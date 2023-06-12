<%@ page import="com.daw1.baloncesto.SociosDB" %>
<%-- Procesar la solicitud de modificación del perfil --%>
<%
  SociosDB aux = new SociosDB("balon.db", "socio");

  request.setCharacterEncoding("UTF-8");
  int id = Integer.valueOf(request.getParameter("socioID"));

  aux.read(id);
  response.sendRedirect("profile.jsp");

  aux.close();
%>
