<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Employee</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/page.css">
    <script src="js/moment.min.js" type="text/javascript"></script>
</head>
<body>
<div class="container-fluid">
    <h2 class="center">Employee</h2>
    <%@ include file="headermenu.jsp" %>
    <div class="card my-5">
        <div class="card-body">
            <form method="POST" action='./EmployeeManagement?action=save' name="frmEmp" onsubmit="return validateAgeForm()">
                <div class="form-group">First Name : <input type="text" class="form-control" maxlength="45" name="fname"
                                                            value="<c:out value="${user.fname}" />" required/></div>
                <div class="form-group">Last Name : <input type="text" class="form-control" maxlength="45" name="lname"
                                                           value="<c:out value="${user.lname}" />" required/></div>
                <div class="form-group">Email : <input type="text" class="form-control" maxlength="100" name="email"
                                                       value="<c:out value="${user.email}" />" required/></div>
                <div class="form-group">Phone : <input type="tel" class="form-control" maxlength="20" name="phone"
                                                       value="<c:out value="${user.phone}" />" required/></div>
                <div class="form-group">DOB : <input type="date" class="form-control" name="dob"
                                                     value="<c:out value="${user.dob}" />" required/></div>
                <div class="form-group">DeptId : <input type="number" class="form-control" maxlength="10" name="deptid"
                                                        value="<c:out value="${user.deptid}" />" required/></div>
                <div class="form-group">Role : <input type="text" class="form-control" maxlength="45" name="role"
                                                      value="<c:out value="${user.role}" />" required/></div>
                <div class="form-group">UserId : <input type="text" class="form-control" maxlength="45" name="userid"
                                                        value="<c:out value="${user.userid}" />" required/></div>
                <div class="form-group">Password : <input type="text" class="form-control" maxlength="30" name="password"
                                                          value="<c:out value="${user.password}" />" required/></div>
                <c:if test="${user.id != null && user.id != ''}"><div class="form-group"><input type="hidden" class="form-control" name="id"
                                                             value="<c:out value="${user.id}" />"/></div></c:if>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary" value="Submit"/>
                    <input type="submit" class="btn" value="Cancel" name="cancel"/>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script>
    function validateDate(date) {
        let twentyfourYearsAgo = moment().subtract(24, "years");
        let birthday = moment(date);

        if (!birthday.isValid()) {
            return true;
        } else if (twentyfourYearsAgo.isAfter(birthday)) {
            return false;
        } else if (!twentyfourYearsAgo.isAfter(birthday)) {
            return true;
        }
    }

    function validateAgeForm() {
        let dobs = document.forms["frmEmp"].elements["dob"].value;
        if (dobs == null || dobs == "") {
            alert("DOB can't be blank");
            return false;
        } else if (validateDate(dobs)) {
            alert("Invalid Date!, Employee Age must be 24 or higher.");
            return false;
        }
    }

</script>
</html>