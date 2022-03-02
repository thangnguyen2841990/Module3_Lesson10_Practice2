<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/2/2022
  Time: 8:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dictionary = new HashMap<>();
%>
    <% dictionary.put("Hello","Xin Chao");
     dictionary.put("Dog","Cho");
     dictionary.put("Cat","Meo");
     dictionary.put("Play","Dan choi");
     String search = request.getParameter("inputWord");
     String result = dictionary.get(search);
        if (result != null) {
            out.println("Word: " + search);
            out.println("Result: " + result);
        } else {
            out.println("Not found");
        }
     %>
</body>
</html>
