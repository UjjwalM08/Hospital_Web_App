package com.admin.servlet;

import com.dao.SpecialistDao;
import com.db.DBConnect;
import com.entity.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/addSpecialist")
public class AddSpecialist extends HttpServlet {
     @Override
    protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
     try{
         String specName=req.getParameter("specName");
        
         SpecialistDao dao=new SpecialistDao(DBConnect.getConn());
         boolean f=dao.addSpecialist("specName");
         HttpSession session=req.getSession();
         if(f){
             
             session.setAttribute("sucMsg","Specialist added");
             resp.sendRedirect("admin/index.jsp");
         } else{
             session.setAttribute("errorMsg","invalid email & password");
             resp.sendRedirect("admin_login.jsp");
            
         }
         
     } catch(Exception e){
         e.printStackTrace();       
     }
    }
    
    
}
