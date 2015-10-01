<%-- 
    Document   : results
    Created on : Oct 1, 2015, 4:52:47 PM
    Author     : athierjung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
    </head>
    
    <%
        int totalHours = Integer.parseInt(request.getParameter("hoursWorked"));
        double hourlyRate = Double.parseDouble(request.getParameter("hourlyPay"));
        double preTaxDeduct = Double.parseDouble(request.getParameter("pretax"));
        double postTaxDeduct = Double.parseDouble(request.getParameter("posttax"));
        
       int regularHours = 40;
       int otHours = totalHours - regularHours;
       double otPayRate = hourlyRate * 1.5;
       double otPay = otHours * otPayRate;
       double regularPay = regularHours * hourlyRate;
       double grossPay = 0;
       double taxablePay = grossPay - preTaxDeduct;
       double taxAmount = 0;
       double postTaxPay = taxablePay - taxAmount;
       double netPay = postTaxPay - postTaxDeduct;
       
       
        if(totalHours > 40)
            grossPay = regularPay + otPay;
        else
            grossPay = totalHours * hourlyRate;
            
        
        if(grossPay < 500)
            taxAmount = taxablePay * .18;
        else
            taxAmount = taxablePay * .22;
        
  
    %>    
    
    
    <body>
        <h1>Salary Info</h1>
        
        <table>
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= totalHours %></td>
                </tr>
                    
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourlyRate %></td>
                </tr>
                    
                <tr>
                    <td># Hours Overtime:</td>
                    <td><%= otHours %></td>
                </tr>
                    
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= otPayRate %></td>
                </tr>
                    
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay %></td>
                </tr>
                    
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preTaxDeduct %></td>
                </tr>
                    
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= taxablePay %></td>
                </tr>
                    
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxAmount %></td>
                </tr>
                    
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= postTaxPay %></td>
                </tr>
                    
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postTaxDeduct %></td>
                </tr>
                    
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netPay %></td>
                </tr>
                    
            </tbody>
        </table>
            
    </body>
</html>
