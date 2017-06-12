<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Staff Management System</title>
</head>
<body>
<center><h1>Staff Management Portal</h1></center>

<div align="center">
<h3> <input type="submit" value="Add New Staff" /></h3>
<input type="submit" value="Search by Staff Name" /><input type="text" style="width: 388px; "/>
</div>

<div align="center">
<table border="1" cellpadding="5">
<caption>Staff List</caption>
<tr>
<th>Staff ID</th>
<th>Name</th>
<th>Contact Number</th>
<th>Email</th>
<th>Home Address</th>
<th>Designation</th>
<th>Reports To</th>
<th>Action</th>
</tr>

<c:forEach var="staff_list" items="${staff_list}">
			<tr>
			    <td><c:out value="${staff_list.staff_id}" /></td>
			    <td><c:out value="${staff_list.name}" /></td>
			    <td><c:out value="${staff_list.contact_no}" /></td>
			    <td><c:out value="${staff_list.email}" /></td>
			    <td><c:out value="${staff_list.home_address}" /></td>
			    <td><c:out value="${staff_list.designation}" /></td>
			    <td><c:out value="${staff_list.reports_to}" /></td>
			    <td>
			    <a href="/edit?staff_list=<c:out value='${staff_list.staff_id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="/delete?staff_list=<c:out value='${staff_list.staff_id}' />">Delete</a> 
               			&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="/viewleave?staff_list=<c:out value='${staff_list.staff_id}' />">View/Manage Leave</a>
                   
                        </td>
			</tr>
		</c:forEach>
		
		
		</table>



</div>
</body>
</html>