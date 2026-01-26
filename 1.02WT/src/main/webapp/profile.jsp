<%@ page import="com.example.auth.RegisterServlet,com.example.auth.User" %>
<%
    String username = (String) session.getAttribute("user");
    String ctx = request.getContextPath();
    if (username == null) {
        response.sendRedirect(ctx + "/login.jsp");
        return;
    }
    User u = RegisterServlet.getUser(username);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Profile</title>
    <style>
        :root {
            --bg: #f6f7fb;
            --panel: #ffffff;
            --panel-edge: #eef0f4;
            --text: #2d2f33;
            --muted: #6b7280;
            --btn: #eef1f7; --btn-edge: #d7dbe6; --btn-text: #2a2e35;
        }
        * { box-sizing: border-box; }
        body { margin: 0; font-family: system-ui,-apple-system,Segoe UI,Roboto,Arial,sans-serif; color: var(--text);
               background: linear-gradient(180deg, var(--bg), #eceff4); min-height: 100vh; display: grid; place-items: center; }
        .card { width: 100%; max-width: 640px; padding: 24px 22px; border-radius: 16px; border: 1px solid #e6e9ef;
                background: linear-gradient(180deg, var(--panel), var(--panel-edge));
                box-shadow: 0 10px 20px rgba(0,0,0,0.06), 0 2px 6px rgba(0,0,0,0.04); }
        h2 { margin: 0 0 12px; font-weight: 650; }
        p.sub { margin: 0 0 18px; color: var(--muted); }
        .grid { display: grid; grid-template-columns: 1fr 1fr; gap: 12px; }
        .item { padding: 12px; border-radius: 12px; border: 1px solid #e6eaf1; background: #fbfcfe;
                box-shadow: inset 0 1px 0 rgba(255,255,255,0.6); }
        .label { font-size: .8rem; color: #6b7280; margin-bottom: 4px; }
        .value { font-weight: 600; letter-spacing: .2px; }
        .row { display:flex; gap:12px; margin-top: 14px; }
        .btn { appearance:none; border:0; cursor:pointer; padding: 10px 14px; border-radius: 12px;
               background: linear-gradient(180deg, var(--btn), var(--btn-edge)); color: var(--btn-text); font-weight: 600;
               box-shadow: 0 6px 0 var(--btn-edge), 0 12px 20px rgba(0,0,0,0.06); transition: transform .05s ease, box-shadow .15s ease; }
        .btn:hover { box-shadow: 0 5px 0 var(--btn-edge), 0 10px 16px rgba(0,0,0,0.07); }
        .btn:active { transform: translateY(2px); box-shadow: 0 3px 0 var(--btn-edge), 0 8px 12px rgba(0,0,0,0.08); }
    </style>
</head>
<body>
<div class="card">
    <h2>Welcome, <%= username %></h2>
    <p class="sub">Here are your details.</p>

    <% if (u != null) { %>
    <div class="grid">
        <div class="item">
            <div class="label">Username</div>
            <div class="value"><%= u.getUsername() %></div>
        </div>
        <div class="item">
            <div class="label">Roll</div>
            <div class="value"><%= (u.getRoll() != null ? u.getRoll() : "-") %></div>
        </div>
        <div class="item">
            <div class="label">Class</div>
            <div class="value"><%= (u.getClassName() != null ? u.getClassName() : "-") %></div>
        </div>
        <div class="item">
            <div class="label">Stream</div>
            <div class="value"><%= (u.getStream() != null ? u.getStream() : "-") %></div>
        </div>
        <div class="item">
            <div class="label">Department</div>
            <div class="value"><%= (u.getDepartment() != null ? u.getDepartment() : "-") %></div>
        </div>
    </div>
    <% } else { %>
        <p class="sub">We couldn't find your profile details (server may have restarted). You are signed in as <strong><%= username %></strong>.</p>
    <% } %>

    <div class="row">
        <a class="btn" href="<%= ctx %>/login.jsp">Back to Login</a>
    </div>
</div>
</body>
</html>
