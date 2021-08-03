<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Department</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/page.css">
</head>
<body>
<div class="container-fluid">
    <h2 class="center">Department</h2>
    <%@ include file="headermenu.jsp" %>
    <div class="card my-5">
        <div class="card-body">
            <form method="POST" action='./EmployeeManagement?action=save_dept' name="frmDept">
                <div class="form-group">Department Name : <input type="text" class="form-control" maxlength="25"  name="dept_name"
                                                                 value="<c:out value="${dept.deptName}" />" required /></div>
                <c:if test="${dept.id != null && dept.id != ''}"><div class="form-group"><input type="hidden" class="form-control"  name="id" value="<c:out value="${dept.id}" />"/></div></c:if>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary" value="Submit"/>
                    <input type="submit" class="btn" value="Cancel" name="cancel"/>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>