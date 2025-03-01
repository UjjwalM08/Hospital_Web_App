<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Page</title>
        <%@include file="../component/allcss.jsp" %>
    </head>
    
    <body>
        <%@include file="navbar.jsp" %>
        
        <c:if test="${empty adminObj}">
            <c:redirect url="../admin_login.jsp"></c:redirect>
        </c:if>
        <div class ="container p-s">
            <br>
            <p class="text-center fs-3">Admin Dashboard</p>
            
        <c:if test="${not empty sucMsg}">
                           <p class="text-center text-success fs-3">${sucMsg}</p>
                           <c:remove var="sucMsg" scope="session"/>
        </c:if>
        <c:if test="${not empty errorMsg}">
                        <p class="text-center text-danger fs-3">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session"/>
        </c:if>
                        
                        <div class="row">
                            <div class="col-md-4">
                                <div class="card paint-card">
                                    <div class="card-body text-center text-success">
                                        <i class ="fas fa-user-md fa-3x"></i><br>
                                        <p class="fs-4 text-center">
                                            Doctor<br>$
                                        </p> 
                                    </div>   
                                 </div>  
                            </div>
                            
                            <div class="col-md-4">
                                <div class="card paint-card">
                                    <div class="card-body text-center text-success">
                                        <i class ="fas fa-user-md fa-3x"></i><br>
                                        <p class="fs-4 text-center">
                                            User<br>43
                                        </p> 
                                    </div>   
                                 </div>  
                            </div>
                            
                            <div class="col-md-4">
                                <div class="card paint-card">
                                    <div class="card-body text-center text-success">
                                        <i class ="fas fa-user-md fa-3x"></i><br>
                                        <p class="fs-4 text-center">
                                            Total Appointment<br>453
                                        </p> 
                                    </div>   
                                 </div>  
                            </div>
                            
                            <div class="col-md-4 mt-2">
                                <div class="card paint-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                    <div class="card-body text-center text-success">
                                        <i class ="fas fa-user-md fa-3x"></i><br>
                                        <p class="fs-4 text-center">
                                            Specialist<br>34
                                        </p> 
                                    </div>   
                                 </div>  
                            </div>
                            
                      </div>             
        </div>
        
        

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
     
          <div class ="modal-body">
              <form action="../addSpecialist" method="post">
              <div class=form-group">
                  <label>Enter Specialist name </label>
                  <input type ="text" name ="specName" class ="form-control">
              </div>
                  <div class="text-center mt-3">
              <button type="submit" class="btn-btn-primary">Add</button>
          </div>
      </form>
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
    </body>  
</html>
