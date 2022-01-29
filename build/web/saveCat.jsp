<%-- 
    Document   : saveCat
    Created on : Sep 26, 2021, 3:20:50 PM
    Author     : JClaude
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@page import="Model.Category" %>
<%@page import="javax.ws.*" %>

    <%

   String id = request.getParameter("catid");
   String name = request.getParameter("name");
   try{
       Category cat= new Category();
  
 cat.setCatid(id);
 cat.setName(name);
 
ClientBuilder.newClient().target("http://localhost:8080/PSalesProject/api/cate").request().post(Entity.json(cat));
response.sendRedirect("index.html");
   }catch(Exception ex){
    ex.printStackTrace();
   }
  
   
%>
    
