<%-- 
    Document   : ProductList
    Created on : Sep 25, 2021, 11:54:45 PM
    Author     : JClaude
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            var baseurl = "http://localhost:8080/PSalesProject/api/res";
            function loadProducts() {
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.open("GET", baseurl + "/list", true);
                xmlhttp.onreadystatechange = function () {
                    if (xmlhttp.readyState === 3 && xmlhttp.status === 200) {
                        var p = JSON.parse(xmlhttp.responseText);
                        var tbltop = `<table>
                            <tr><th>PId</th><th>Category</th><th>P-Name</th><th>P-Quantity</th><th>P-Price</th><th>Unit Cost</th><th>Action</th></tr>`;
                        //main table content we fill from data from the rest call
                        var main = "";
                        for (i = 0; i < p.length; i++) {
                            main += "<tr><td>" + p[i].pid + "</td><td>" + p[i].name + "</td>\n\
            <td>" + p[i].quantity + "</td><td>" + p[i].unit_price + "</td>\n\
            <td>" + p[i].unit_cost + "</td></tr>";
                        }
                        var tblbottom = "</table>";
                        var tbl = tbltop + main + tblbottom;
                        document.getElementById("productinfo").innerHTML = tbl;
                    }
                };
                xmlhttp.send();
            }
            window.onload = function () {
                loadProducts();
            }
        </script>
    </head>
    <body>
        <div id="productinfo"></div>
    </body>
</html>
