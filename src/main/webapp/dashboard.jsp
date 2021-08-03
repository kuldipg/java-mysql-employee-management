<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Employee Management</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/page.css">
</head>
<body>
<div class="container-fluid">
    <h2 class="center">Employee Management</h2>

    <c:set var="loggedUser" value="${user}" scope="session"/>
    <%@ include file="headermenu.jsp" %>
    <c:if test="${user.role == 'admin'}">

        <div class="card my-5">
            <div class="card-body scrollable-table-h">
                <table class="table table-striped">
                    <tr>
                        <td>Employees</td>
                    </tr>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>DOB</th>
                        <th>Phone</th>
                        <th>Role</th>
                        <th>UserId</th>
                        <th>DeptId</th>
                        <th colspan="2">Action buttons</th>
                    </tr>
                    <c:forEach items="${userList}" var="user">
                        <tr>
                                <%-- <td>${item.id}</td>--%>
                            <td>${user.fname}</td>
                            <td>${user.lname}</td>
                            <td>${user.email}</td>
                            <td>${user.dob}</td>
                            <td>${user.phone}</td>
                            <td>${user.role}</td>
                            <td>${user.userid}</td>
                            <td>${user.deptid}</td>
                            <td><a href="./EmployeeManagement?action=edit&id=<c:out value='${user.id}' />">Edit</a></td>
                            <td><a href="./EmployeeManagement?action=delete&id=<c:out value='${user.id}' />">Delete</a>
                            </td>

                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>

        <div class="card mb-5">
            <div class="card-body scrollable-table-h">
                <table class="table table-striped">
                    <tr>
                        <td>Departments</td>
                    </tr>
                    <tr>
                        <th>Department_Id</th>
                        <th>Department_Name</th>
                        <th colspan="2">Action buttons</th>
                    </tr>
                    <c:forEach items="${deptList}" var="dept">
                        <tr>
                            <td>${dept.id}</td>
                            <td>${dept.deptName}</td>
                            <td><a href="./EmployeeManagement?action=edit_dept&id=<c:out value='${dept.id}' />">Edit</a>
                            </td>
                            <td>
                                <a href="./EmployeeManagement?action=delete_dept&id=<c:out value='${dept.id}' />">Delete</a>
                            </td>

                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </c:if>

    <div class="card mb-5">
        <div class="card-body scrollable-table-h">
            <table class="table table-striped">
                <tr>
                    <td>Compliance</td>
                </tr>
                <tr>
                    <th>Compliance_Id</th>
                    <th>Regulation Type</th>
                    <th>Details</th>
                    <th>Created Date</th>
                    <th>Department_Id</th>
                    <th colspan="2">Action buttons</th>
                </tr>
                <c:forEach items="${compList}" var="comp">
                    <tr>
                        <td>${comp.id}</td>
                        <td>${comp.rltype}</td>
                        <td>${comp.details}</td>
                        <td><fmt:formatDate value="${comp.createDate}" pattern="yyyy-MM-dd"/></td>
                        <td>${comp.departmentId}</td>
                        <c:if test="${user.role == 'admin'}">
                            <td><a href="./EmployeeManagement?action=edit_comp&id=<c:out value='${comp.id}' />">Edit</a>
                            </td>
                            <td>
                                <a href="./EmployeeManagement?action=delete_comp&id=<c:out value='${comp.id}' />">Delete</a>
                            </td>
                        </c:if>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

    <div class="card my-5">
        <div class="card-body scrollable-table-h">
            <table class="table table-striped">
                <tr>
                    <td>Comments</td>
                </tr>
                <tr>
                    <th>Comment_Id</th>
                    <th>Comment</th>
                    <th>Compliance_Id</th>
                    <th>Department_Id</th>
                    <th>Employee_Id</th>
                    <th>Created Date</th>
                    <c:if test="${id == stsrpt.empId}">
                        <th>Action buttons</th>
                    </c:if>
                </tr>
                <c:forEach items="${stsrptList}" var="stsrpt">
                    <tr>
                        <td>${stsrpt.id}</td>
                        <td>${stsrpt.comments}</td>
                        <td>${stsrpt.compId}</td>
                        <td>${stsrpt.deptId}</td>
                        <td>${stsrpt.empId}</td>
                        <td><fmt:formatDate value="${stsrpt.createDate}" pattern="yyyy-MM-dd"/></td>
                        <c:if test="${id == stsrpt.empId}">
                            <td><a href="./EmployeeManagement?action=edit_comment&id=<c:out value='${stsrpt.id}' />">Edit</a>
                            </td>
                        </c:if>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>