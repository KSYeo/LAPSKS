<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Staff Details</title>
</head>
<body>

<center><h2>Edit Staff Details</h2></center>

<div align="center">
<table>
<tr><td>Staff ID: </td> <td><c:out value="${staff_list.staff_id}" /></tr>
<tr><td>Name:</td> <td><input style="text" value="${staff_list.name}" /></td></tr>
<tr><td>Contact No:</td> <td><input style="text" value="${staff_list.contact_no}" /></td></tr>
<tr><td>Email:</td> <td><input style="text" value="${staff_list.email}" /></td></tr>
<tr><td>Address:</td> <td><input style="text" value="${staff_list.address}" /></td></tr>
<tr>
<td>Designation:</td> 
<td>
<select>
<option value="Manager">Manager</option>
<option value="Employee">Employee</option>
<option value="Admin">Administrator</option>
</select>
</td>
</tr>
<tr><td>Reports To</td>
<td>
<select>
<%
try {
    String[] strIds;
    String[] strNames; 
    String url = "jdbc:mysql://localhost:3306/laps";
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection(url,"root","password");
    Statement stmt = conn.createStatement();
    ResultSet rs; 
    rs = stmt.executeQuery("SELECT staff_id,name FROM staff_list WHERE designation='Manager';"); 
    while ( rs.next() ) {
out.println( "<Option value=\"" + rs.getString("staff_id") + "\" >" + rs.getString("name") + "</option>");
    }
    conn.close();
} catch (Exception e) {
    System.err.println("Got an exception! ");
    System.err.println(e.getMessage());
} 
%>
</select>
</tr>
</table>
<input type="submit" value="Undo Changes"> &nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Submit">
</div>
</body>
</html>