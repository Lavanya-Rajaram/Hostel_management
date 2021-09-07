package com.mvc.dao;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.bean.RegisterBean;
import com.mvc.util.DBConnection;
 
public class RegisterDao { 
     public String registerUser(RegisterBean registerBean)
     {
         String fullName = registerBean.getFullName();
         String fatherName = registerBean.getFatherName();
         String gender = registerBean.getGender();
         String email = registerBean.getEmail();
         String address = registerBean.getAddress();
         String phone = registerBean.getPhone();
         String hostelRequired = registerBean.getHostelRequired();
         
         Connection con = null;
         PreparedStatement preparedStatement = null;         
         try
         {
             con = DBConnection.createConnection();
        	 
             String query = "insert into users(fullName,FatherName,Gender,Email,Address,Phone,HostelRequired,RoomNo) values (?,?,?,?,?,?,?,NULL)"; //Insert user details into the table 'USERS'
             preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
             preparedStatement.setString(1, fullName);
             preparedStatement.setString(2, fatherName);
             preparedStatement.setString(3, gender);
             preparedStatement.setString(4, email);
             preparedStatement.setString(5, address);
             preparedStatement.setString(6, phone);
             preparedStatement.setString(7, hostelRequired);
             
             int i= preparedStatement.executeUpdate();
             
             if (i!=0)  //Just to ensure data has been inserted into the database
             return "SUCCESS"; 
         }
         catch(SQLException e)
         {
            e.printStackTrace();
         }       
         return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
     }
}
