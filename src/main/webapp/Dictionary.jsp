<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 23/5/2021
  Time: 5:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Map<String,String> dictionary = new HashMap<>();
    dictionary.put("hello","Xin chào");
    dictionary.put("good bey","chào tạm biệt");
    dictionary.put("how","như thế nào?");
    dictionary.put("what","Cái gì?");

    PrintWriter writer = response.getWriter();
    String input = request.getParameter("input1");
    String output = dictionary.get(input);

    if (input!=null){
        writer.write("<h1>word: "+input+"<h1/>");
        writer.write("<h1>result: "+ output+"<h1/>");
    }else {
        writer.write("<h1>Not found<h1>");
    }
%>
</body>
</html>
