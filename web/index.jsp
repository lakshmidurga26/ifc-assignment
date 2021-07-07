<%-- 
    Document   : index
    Created on : 6 Jul, 2021, 7:08:32 PM
    Author     : Bhargav
--%>

<%@page import="java.util.Date" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style><%@include file="/WEB-INF/css/style.css"%></style>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <% 
          Date date = new Date();
         %>
    <body>
<!--        <h1>Hello World!</h1>
        <p>Todays date is <%= date %></p>-->
<form action="" id="EmploymentApplication100" method="post" onsubmit="return ValidateForm(this);">
   <script type="text/javascript">
      function ValidateForm(frm) {
          if (frm.first_name.value == "") { alert('First name is required.'); frm.first_name.focus(); return false; }
          if (frm.last_name.value == "") { alert('Last name is required.'); frm.last_name.focus(); return false; }
          if (frm.employee_id.value == "") { alert('Employee id is required.'); frm.employee_id.focus(); return false; }
          if (frm.start_date.value == "") { alert('Start date is required.'); frm.start_date.focus(); return false; }
          if (frm.designation.value == "") { alert('Designation is required.'); frm.designation.focus(); return false; }
          if (frm.department.value == "") { alert('Department is required.'); frm.department.focus(); return false; }
          if (frm.end_date.value == "") { alert('End Date is required.'); frm.end_date.focus(); return false; }
          if (frm.status.value == "") { alert('Status is required.'); frm.status.focus(); return false; }
          if (frm.dob.value == "") { alert('DOB is required.'); frm.dob.focus(); return false; }
          if (frm.reporting_manager.value == "") { alert('Reporting manager is required.'); frm.reporting_manager.focus(); return false; }
          if (frm.Gender.value == "") { alert('Gender is required.'); frm.gender.focus(); return false; }
          if (frm.blood_group.value == "") { alert('Blood group is required.'); frm.blood_group.focus(); return false; }
          if (frm.address.value == "") { alert('Address is required.'); frm.address.focus(); return false; }
          
      return true; }
   </script>
   <script>
       <script>
            $(document).ready(function() {
            $("#save_data").click(function() {
            alert("succeess");
            $.ajax({
                url: "save.jsp",
                type: "post",
                data: {
                        fname:$('#first_name').val(),
                        lname:$('#last_name').val(),
                        empid:$('#employee_id').val(),
                        startdate:$('#start_date').val(),
                        designation:$('#designation').val(),
                        depart:$('#department').val(),
                        enddate:$('#end_date').val(),
                        status:$('#status').val(),
                        dob:$('#dob').val(),
                        reportingmanager:$('#reporting_manager').val(),
                        gender:$('#gender').val(),
                        bloodgroup:$('#blood_group').val(),
                        address:$('#address').val(),
                        success : function(data){
                        alert(data);
                        }
                    }
                });
             });
            });
</script>
   </script>
   <table border="0" cellpadding="5" cellspacing="0">
      <tr>
         <td style="width: 50%">
            <label for="First_Name"><b>First name *</b></label><br />
            <input name="first_name" id="first_name" type="text" maxlength="50" style="width:100%;max-width: 260px" />
         </td>
         </tr>
         <tr>
         <td style="width: 50%">
            <label for="Last_Name"><b>Last name *</b></label><br />
            <input name="last_name" id="last_name" type="text" maxlength="50" style="width:100%;max-width: 260px" />
         </td>
      </tr>
      <tr>
         <td style="width: 50%"> 
            <label for="Employee_ID"><b>Employee ID *</b></label><br />
            <input name="employee_id" id="employee_id" type="text" maxlength="50" style="width:100%;max-width: 260px" />
         </td>                 
      </tr>
      <tr>
      <td style="width: 50%">
            <label for="Start_Date"><b>Start Date *</b></label><br />
            <input name="start_date" id="start_date" type="text" maxlength="50" style="width:100%;max-width: 260px" />
         </td>
      </tr>
      <tr>
      <td style="width: 50%">
            <label for="Designation"><b>Designation *</b></label><br />
            <input name="designation" id="designation" type="text" maxlength="50" style="width:100%;max-width: 260px" />
         </td>
      </tr>
       <tr>
      <td style="width: 50%">
            <label for="Department"><b>Department *</b></label><br />
            <input name="department" id="department" type="text" maxlength="50" style="width:100%;max-width: 260px" />
         </td>
      </tr>
       <tr>
      <td style="width: 50%">
            <label for="End_Date"><b>End Date *</b></label><br />
            <input name="end_date" id="end_date" type="text" maxlength="50" style="width:100%;max-width: 260px" />
         </td>
      </tr>
       <tr>
      <td style="width: 50%">
            <label for="Status"><b>Status *</b></label><br />
            <input name="status" id="status" type="text" maxlength="50" style="width:100%;max-width: 260px" />
         </td>
      </tr>
       <tr>
      <td style="width: 50%">
            <label for="DOB"><b>DOB *</b></label><br />
            <input name="dob" id="dob" type="text" maxlength="50" style="width:100%;max-width: 260px" />
         </td>
      </tr>
       <tr>
      <td style="width: 50%">
            <label for="Reporting_manager"><b>Reporting Manager *</b></label><br />
            <input name="reporting_manager" id="reporting_manager" type="text" maxlength="50" style="width:100%;max-width: 260px" />
         </td>
      </tr>
    <tr>
      <td style="width: 50%">
            <label for="Gender"><b>Gender *</b></label><br />
            <input name="gender" id="gender" type="text" maxlength="50" style="width:100%;max-width: 260px" />
         </td>
      </tr>
     
         
       <tr>
      <td style="width: 50%">
            <label for="Blood_Group"><b>Blood Group *</b></label><br />
            <input name="blood_group" id="blood_group" type="text" maxlength="50" style="width:100%;max-width: 260px" />
         </td>
      </tr>
       <tr>
      <td style="width: 50%">
            <label for="Address"><b>Address *</b></label><br />
            <input name="address" id="address" type="text" maxlength="50" style="width:100%;max-width: 260px" />
         </td>
      </tr>
      <tr>
         <td colspan="2" style="text-align: center;">
             <input name="skip_submit" type="submit" id="save_data" value="Send Application" />
         </td>
      </tr>
   </table>
</form>
    </body>
</html>
