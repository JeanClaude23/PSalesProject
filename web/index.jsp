<%-- 
    Document   : index
    Created on : Sep 28, 2021, 6:56:28 PM
    Author     : JClaude
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script>
            var baseurl = "http://localhost:8080/PSalesProject/api/cate/list";
            $.getJSON(baseurl, function (list) {
                for (i = 0; i < list.length; i = i + 1) {
                    console.log(list);
                    ///access the table and store it in a variable
                    var table = document.querySelector("#categories");
                    var row = table.insertRow();

                    row.insertCell(0).innerHTML = list[i].catid;
                    row.insertCell(1).innerHTML = list[i].name;
                    row.insertCell(2).innerHTML = '<a href=http://localhost:8080/PSalesProject/cateList.jsp?id=' + list[i].catid + '&name=' + list[i].name + '>Update</a>';
                    row.insertCell(3).innerHTML = '<a href=http://localhost:8080/PSalesProject/api/cate/delete?id=' + list[i].catid + '>Delete</a>';
                }
            });
        </script>
    </head>
    <body>
        <table id="categories">
            <tr>
                <id>
                <name>
                <Edit>
                <Remove>
            </tr>
        </table>
    </body>
</html>
