<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Compliance</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/page.css">
</head>
<body>
<div class="container-fluid">
    <h2 class="center">Compliance</h2>
    <%@ include file="headermenu.jsp" %>
    <div class="card my-5">
        <div class="card-body">
            <form method="POST" action='./EmployeeManagement?action=save_comp' name="frmComp">
                <div class="form-group">Regulation Type : <input type="text" class="form-control" maxlength="15" name="rltype"
                                                                 value="<c:out value="${comp.rltype}" />" required /></div>
                <div class="form-group">Details : <input type="text" class="form-control" maxlength="250"  name="details"
                                                         value="<c:out value="${comp.details}" />" required /></div>
                <div class="form-group">DepartmentId : <input type="number" class="form-control" maxlength="10" name="deptid"
                                                              value="<c:out value="${comp.departmentId}" />" required /></div>
                <c:if test="${comp.id != null && comp.id != ''}"><div class="form-group"><input type="hidden" name="id" class="form-control"  value="<c:out value="${comp.id}" />"/></div></c:if>
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