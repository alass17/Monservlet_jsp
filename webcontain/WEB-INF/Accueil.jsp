<%@page import="com.classes.Utilisateur"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>

<h1>BIENVENU  ${nom} </h1>
<div class=but>
<form method="post" action="${pageContext.servletContext.contextPath }/monservlet2">

<!-- <button type="submit">Deconnecter</button> -->
<table>
<tr>
<td><input type="submit" name="" value="Deconnecter"></td>
</tr>
</table>
</form>
</div>
<p1>

<%  HttpSession ses = request.getSession();
	List<Utilisateur> liste=(List)session.getAttribute("liste"); %>
<form action="">

  <table>
      <tr>
        <th>Nom</th>
        <th>Prenom</th>
        <th>Pseudo</th>
        <th>Email</th>
      </tr>
      
      <% for(Utilisateur u:liste) {%>
	      <tr>
	        <td><%=u.getNom() %></td>
	        <td><%=u.getPrenom()%></td>
	        <td><%=u.getPseudo()%></td>
	        <td><%=u.getEmail()%></td>
	      </tr>
	      <%} %>
    </table>
    
</form>
</p1>


<style>
*{
 background-color:#95a5a6;
 }
.but {
    text-align: -webkit-right;
    margin-right: 30px;
}
h1 {
    text-align: center;
}
P1{
	text-align: center;
}

		
</style>
</body>
</html>