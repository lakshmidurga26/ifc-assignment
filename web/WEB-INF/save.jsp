<%-- 
    Document   : save
    Created on : 6 Jul, 2021, 10:25:23 PM
    Author     : Bhargav
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String employee_id=request.getParameter("employee_id");
String start_date=request.getParameter("start_date");
String designation=request.getParameter("designation");
String department=request.getParameter("department");
String end_date=request.getParameter("end_date");
String status=request.getParameter("status");
String dob=request.getParameter("dob");
String reporting_manager=request.getParameter("reporting_manager");
String gender=request.getParameter("gender");
String blood_group=request.getParameter("blood_group");
String address=request.getParameter("address");
try
{
  Class.forName("com.mysql.jdbc.Driver");
Connection conn =
        DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_database","root","");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into employee(first_name,last_name,employee_id,start_date,designation,department,end_date,status,dob,reporting_manager,gender,blood_group,address)"
        + "values('"+first_name+"','"+last_name+"','"+employee_id+"','"+start_date+"','"+designation+"','"+department+"','"+end_date+"','"+status+"','"+dob+"','"+reporting_manager+"','"+gender+"','"+blood_group+"','"+address+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
   System.out.print(e);
   e.printStackTrace();
}
%>