<%
    String user = (String) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<body>
<h2>Welcome, <%= user %>!</h2>
<p>You are logged in successfully.</p>
</body>
</html>
