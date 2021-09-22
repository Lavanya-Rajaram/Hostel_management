package com.mvc.controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.mvc.bean.RegisterBean;
import com.mvc.dao.RegisterDao;
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
 
     public RegisterServlet() {
     }
 
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Copying all the input parameters in to local variables
         String fullName = request.getParameter("fullname");
         String fatherName = request.getParameter("fatherName");
         String gender = request.getParameter("gender");
         String email = request.getParameter("email");
         String address = request.getParameter("address");
         String phone = request.getParameter("phone");
         String hostelRequired = request.getParameter("hostelRequired");
        
         
         RegisterBean registerBean = new RegisterBean();
        
         registerBean.setFullName(fullName);
         registerBean.setFatherName(fatherName);
         registerBean.setGender(gender);
         registerBean.setEmail(email);
         registerBean.setAddress(address); 
         registerBean.setPhone(phone);
         registerBean.setHostelRequired(hostelRequired);
        
         
         RegisterDao registerDao = new RegisterDao();
         
        
         String userRegistered = registerDao.registerUser(registerBean);
       
         
         if(userRegistered.equals("SUCCESS"))   
         {
        	 request.setAttribute("fullName", registerBean.getFullName());
             request.setAttribute("fatherName",registerBean.getFatherName());
             request.setAttribute("gender",registerBean.getGender());
             request.setAttribute("email", registerBean.getEmail());
             request.setAttribute("address", registerBean.getAddress());
             request.setAttribute("phone", registerBean.getPhone());
            
             
             RequestDispatcher requestDispatcher = request.getRequestDispatcher("employeeDetails.jsp");
             requestDispatcher.forward(request, response);
           
         }
         else   
         {
            request.setAttribute("errMessage", userRegistered);
            request.getRequestDispatcher("/Register.jsp").forward(request, response);
         }
         
     }
}