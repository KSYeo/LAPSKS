<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Leave Entitlement</title>
</head>
<center><h2>Manage Leave Entitlement for ${staff_list.staff_name}</h2></center>

<div align="center"> 
<table>
<tr>
<th>Type of Leave</th>
<th>No. of Days</th>
</tr>

<tr> <td>Annual Leave </td><td><input style="text" value=${staff_list.a_leave}> </td> </tr>
<tr> <td>Medical Leave </td><td><input style="text" value=${staff_list.m_leave}> </td> </tr>
<tr> <td>Compensation Leave </td><td><input style="text" value=${staff_list.c_leave}> </td> </tr>

<%-- <c:forEach var="leave_type" items="${leave_type}">
<tr>
<td><c:out value="${leave_type.leave_name}" /></td>
<td><input type="text" value=${}></td>
</tr>
</c:forEach> --%>

</table>

<input type="submit" value="Clear" style="width: 136px; ">
&nbsp;&nbsp;&nbsp;
<input type="submit" value="Save Changes" style="width: 136px; ">




</div>

<body>

</body>
</html>