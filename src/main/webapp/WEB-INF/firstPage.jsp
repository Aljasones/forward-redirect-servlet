
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>First Page</title>
</head>
<body>
    <h1>Testing DATA</h1>
    <p>
        <%@
            page import="java.util.Date"
        %>
        <%
            String name = request.getParameter("name");
            Date date = new Date ();
        %>
        <%=
            name + ", сегодня : "
        %>
        <%=
            date
        %>
    </p>


</body>
</html>
