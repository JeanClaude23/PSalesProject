<%-- 
    Document   : purchaselist
    Created on : Sep 28, 2021, 3:31:10 AM
    Author     : JClaude
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
        <script>
            var baseurl = "http://localhost:8080/PSalesProject/api/purch";
            function loadPurchases() {
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.open("GET", baseurl + "/Display", true);
                xmlhttp.onreadystatechange = function () {
                    if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                        var pur = JSON.parse(xmlhttp.responseText);
                        var tbltop = `<table id="example1" class="table table-bordered table-striped">
                            <tr><th>Purchase Id</th><th>Purchase Date</th><th>Purchase Cost</th></tr>`;
                        //main table content we fill from data from the rest call
                        var main = "";
                        for (i = 0; i < pur.length; i++) {
                            main += "<tr><td>" + pur[i].id + "</td><td>" + pur[i].date + "</td><td>" + pur[i].total_cost + "</td><td><button class="btn btn-primary edit-row" data-id="+pur[i].id+" style="margin-right: 2px;" data-toggle="modal" data-target="#modal-edit">Edit</button><button class="btn btn-danger delete-row" data-id="+pur[i].id+"><i class="fa fa-trash"></i></button></td></tr>";
                        }
                        var tblbottom = "</table>";
                        var tbl = tbltop + main + tblbottom;
                        document.getElementById("personinfo").innerHTML = tbl;
                    }
                };
                xmlhttp.send();
            }
            window.onload = function () {
                loadPurchases();
            }
        </script>
    </head>
    <body>
        <div id="personinfo"></div>
    </body>
</html>
