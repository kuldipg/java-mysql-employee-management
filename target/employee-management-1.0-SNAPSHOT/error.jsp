<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isErrorPage="true" %>

<html>
<head>
    <title>Show Error Page</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>

<body>
<div class="container-fluid">
    <div class="card mx-5 my-5">
        <div class="card-body">
            <h2>Oops...</h2>
            <table width="100%" class="table table-striped">

                <tr valign="top">
                    <td colspan="2"><a href="./EmployeeManagement?action=dashboard">Back to Dashboard</a></td>
                </tr>

                <tr valign="top">
                    <td width="40%"><b>Error:</b></td>
                    <td>${pageContext.exception}</td>
                </tr>

                <tr valign="top">
                    <td><b>URI:</b></td>
                    <td>${pageContext.errorData.requestURI}</td>
                </tr>

                <tr valign="top">
                    <td><b>Status code:</b></td>
                    <td>${pageContext.errorData.statusCode}</td>
                </tr>

                <tr valign="top">
                    <td><b>Stack trace:</b></td>
                    <td>
                        <c:forEach var="trace"
                                   items="${pageContext.exception.stackTrace}">
                            <p style="color: #721c24; margin-bottom: 0.5rem;">${trace}</p>
                        </c:forEach>
                    </td>
                </tr>

                <tr valign="top">
                    <td colspan="2"><a href="./EmployeeManagement?action=dashboard">Back to Dashboard</a></td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>