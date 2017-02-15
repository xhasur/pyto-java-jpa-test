<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<h1 align="center">Countries</h1>

<p>${msg}</p>
<form>
<table>
  <THEAD>
    <TR>
      <TH SCOPE=col ROWSPAN=2>Nombre</TH>
    </TR>
  </THEAD>
  <TBODY>
<c:forEach items="${countries}" var="cou" varStatus="status">
	
	<tr>
		<td>${cou.countryName} </td>
	    <td><a href="delete.htm?id=${cou.countryId}">Borrar</a></td>
	</tr>
</c:forEach>
  </TBODY>
</table>
</form>
</body>
</html>
