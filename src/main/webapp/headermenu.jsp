<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <body>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <!-- Navbar content -->
        <a class="navbar-brand nav-link"
           href="./EmployeeManagement?action=dashboard">Welcome ${loggedUser.fname} ${loggedUser.lname} : ${id}</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <c:if test="${loggedUser.role == 'admin'}">
                    <li class="nav-item" data-toggle="tab"><a class="nav-link" href="./EmployeeManagement?action=add">Add
                        Employee</a>
                    </li>
                    <li class="nav-item" data-toggle="tab"><a class="nav-link" href="./EmployeeManagement?action=add_dept">Add
                        Department</a></li>
                    <li class="nav-item" data-toggle="tab"><a class="nav-link" href="./EmployeeManagement?action=add_comp">Add
                        Compliance</a></li>
                    <li class="nav-item" data-toggle="tab"><a class="nav-link"
                                                              href="./EmployeeManagement?action=add_comment">Add Comment</a>
                    </li>
                </c:if>
                <li class="nav-item my-2 my-lg-0" data-toggle="tab"><a class="nav-link"
                                                                       href="./EmployeeManagement?action=logout">Log Out</a>
                </li>
            </ul>
        </div>
    </nav>
    </body>
<script>
    window.onload = function() {
        try {
            document.querySelector('nav a[href^="./' + window.location.href.split("/")[window.location.href.split("/").length - 1] + '"]').classList.add('active');
        } catch(e){}
    };
</script>
</html>