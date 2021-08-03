<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Comment</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/page.css">
</head>
<body>
<div class="container-fluid">
    <h2 class="center">Comment</h2>
    <%@ include file="headermenu.jsp" %>
    <div class="card my-5">
        <div class="card-body">
            <form method="POST" action='./EmployeeManagement?action=save_comment' name="frmstsRpt">
                <div class="form-group">Compliance Id: <input type="number" class="form-control" maxlength="10" name="compId"
                                                              value="<c:out value="${stsrpt.compId}" />" required /></div>
                <div class="form-group">Comments : <input type="text" class="form-control" maxlength="160" name="comments"
                                                          value="<c:out value="${stsrpt.comments}" />" required /></div>
                <div class="form-group">DeptId : <input type="number" class="form-control" maxlength="10" name="deptid"
                                                        value="<c:out value="${stsrpt.deptId}" />" required/></div>
                <div class="form-group">EmpId : <input type="number" class="form-control" maxlength="10" name="deptid"
                                                        value="<c:out value="${stsrpt.empId}" />" required/></div>
                <c:if test="${stsrpt.id != null && stsrpt.id != ''}"><div class="form-group"><input type="hidden" name="id" class="form-control"
                                                                                                value="<c:out value="${stsrpt.id}" />"/></div></c:if>
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