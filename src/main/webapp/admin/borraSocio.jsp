<%@ page import="com.daw1.baloncesto.SociosDB" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <%
      SociosDB aux = new SociosDB("balon.db", "socio");

      int id = Integer.valueOf(request.getParameter("socioID"));

      aux.delete(id);

      aux.close();
    %>	
    <script>document.location = "admin.jsp"</script>
  </body>
</html>
