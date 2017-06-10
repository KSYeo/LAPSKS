<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Leave Type Management</title>
</head>
<body>
    <center>
        <h1>Add New Leave Type</h1>
    </center>
    <div align="center">
        <c:if test="${leave_type != null}">
            <form action="update" method="post">
        </c:if>
        <c:if test="${leave_type == null}">
            <form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    <c:if test="${leave_type != null}">
                        Edit Book
                    </c:if>
                    <c:if test="${leave_type == null}">
                        Add New Book
                    </c:if>
                </h2>
            </caption>
                <c:if test="${leave_type != null}">
                    <input type="hidden" name="id" value="<c:out value='${leave_type.leave_type}' />" />
                </c:if>           
            <tr>
                <th>Leave Type: </th>
                <td>
                    <input type="text" name="leave_type" size="45"
                            value="<c:out value='${leave_type.leave_type}' />"
                        />
                </td>
            </tr>
            <tr>
                <th>Leave Description: </th>
                <td>
                    <input type="text" name="leave_name" size="45"
                            value="<c:out value='${leave_type.leave_name}' />"
                    />
                </td>
            </tr>
            
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save" />
                </td>
            </tr>
        </table>
        </form>
    </div>   
</body>
</html>