
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login Page</title>
        <%@include file="component/allcss.jsp" %>
         <style type="text/css">
            .paint-card{
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.3)
            }
        </Style>
    </head>
    <body>
       <%@include file="component/navbar.jsp" %>
       <br>
       <br>
       <div class="container p-S">
    <div class ="row">
        <div class ="col-md-4 offset-md-4">
            <div class ="card paint-card">
                <div class="card-body">
                    <p class ="fs-4 text-center"> Admin Login</p>
                    
                     <c:if test="${not empty sucMsg}">
                           <p class="text-center text-success fs-3">${sucMsg}</p>
                           <c:remove var="sucMsg" scope="session"/>
                    </c:if>

                        
                    <c:if test="${not empty errorMsg}">
                        <p class="text-center text-danger fs-3">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session"/>
                    </c:if>
                    
                    <form action="adminLogin" method="post">
                        <div class="mb-3">
                            <label class ="form-label">Email address</label>  
                            <input type="email" name="email" class="form-control" required>
                        </div>
                        <div class="mb-3">
                           <label class="form-label">Password:</label>
                           <input name="password" type="password" class="form-control" required>
                        </div>
                        <button type="submit" class="btn bg-success text-white col-md-12">Login</button>
                     </form>
                </div>
            </div>
        </div>
    </div>   
</div>
    </body>
</html>
