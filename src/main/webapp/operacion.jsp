<%@ page import="com.daw1.baloncesto.SociosDB" %>
<%
    SociosDB aux = new SociosDB("balon.db", "socio");

    int id = Integer.valueOf(request.getParameter("socioID"));
    int tickets = Integer.valueOf(request.getParameter("numEntradas"));
    if(aux.setTicket(id, tickets) == true) {
        response.sendRedirect("compraEntrada.jsp");
    }

    aux.close();
%>
