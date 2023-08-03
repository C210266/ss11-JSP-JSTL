<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/3/2023
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL Core Tags Example 01</title>
</head>
<body>

<h2>Departments and Employees</h2>

<!-- Dùng for để duyệt trên các phòng ban (departments) -->
<c:forEach items="${departments}" var="dept">
    <c:if test="${not empty dept.employees}">
        <h3>${dept.deptName}</h3>
        <ul>
            <!-- Dùng for để duyệt trên các nhân viên
                        thuộc phòng ban hiện tại -->
            <c:forEach items="${dept.employees}" var="emp">
                <li>
                        ${emp.empName} - (${emp.job})
                </li>
            </c:forEach>
        </ul>
    </c:if>


</c:forEach>

</body>
</html>

