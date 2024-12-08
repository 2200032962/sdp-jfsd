<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Super Admin - Administrator List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2>Administrator Management</h2>
        <a href="/superadmin/administrators/new" class="btn btn-primary mb-3">Add New Administrator</a>
        
        <table class="table table-striped">
            <thead class="thead-dark">
                <tr>
                    
                    <th>Username</th>
                    <th>Password</th>
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach var="admin" items="${admins}">
                    <tr>
                        
                        <td>${admin.adminUsername}</td>
                        <td>${admin.password}</td>
                        
                        <td>
                            <a href="/superadmin/administrators/edit/${admin.id}" class="btn btn-sm btn-warning">Edit</a>
                            <a href="/superadmin/administrators/delete/${admin.id}" class="btn btn-sm btn-danger" 
                               onclick="return confirm('Are you sure you want to delete this administrator?');">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>