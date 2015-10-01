<%-- 
    Document   : index
    Created on : Oct 1, 2015, 4:19:05 PM
    Author     : athierjung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./stylesheet.css" />
        <title>Salary Calculator</title>
    </head>
    
    <body>
        <h1>Simple Salary Calculator</h1>
        
        <form name="salaryInput" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hoursWorked" value="" size="50"></td>
                    </tr> 
                    
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="hourlyPay" value="" size="50"></td>
                    </tr> 
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="pretax" value="" size="50"></td>
                    </tr> 
                    
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="posttax" value="" size="50"></td>
                    </tr> 
                    
                </tbody>
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
        </form>
    </body>
</html>
