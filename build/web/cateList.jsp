<%-- 
    Document   : cateList
    Created on : Sep 28, 2021, 10:45:01 PM
    Author     : JClaude
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body >
    <center><h1>Category Modification Form</h1>
        <form action="http://localhost:8080/PSalesProject/api/cate/update" method="POST">
            <table>
            <tr>
                <td style="color: blue">Category Id:</td>
                <td>
                    <input type="text" name="id" value="<%= request.getParameter("id") %>" readonly/>
                </td>
            </tr>
            <tr>
                <td style="color: blue">Category Name:</td>
                <td>
                    <input type="text" name="name" value="<%= request.getParameter("name") %>"/>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button value="Submit" style="background-color: greenyellow; margin-top: 10px; margin-bottom: 10px">Update</button>
                </td>
            </tr>
        </table>
        </form>
                </center>
    </body>
</html>
