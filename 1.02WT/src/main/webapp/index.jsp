<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Welcome</title>
    <style>
        :root { --bg:#f6f7fb; --panel:#fff; --panel-edge:#eef0f4; --text:#2d2f33; --muted:#6b7280; --btn:#eef1f7; --btn-edge:#d7dbe6; --btn-text:#2a2e35; }
        *{box-sizing:border-box}
        body{margin:0;font-family:system-ui,-apple-system,Segoe UI,Roboto,Arial,sans-serif;background:linear-gradient(180deg,var(--bg),#eceff4);color:var(--text);min-height:100vh;display:grid;place-items:center}
        .card{width:100%;max-width:520px;background:linear-gradient(180deg,var(--panel),var(--panel-edge));border-radius:16px;box-shadow:0 10px 20px rgba(0,0,0,.06),0 2px 6px rgba(0,0,0,.04);padding:24px 22px;border:1px solid #e6e9ef;text-align:center}
        h1{margin:0 0 10px;font-weight:700}
        p{margin:0 0 18px;color:var(--muted)}
        .row{display:flex;gap:12px;justify-content:center}
        a.btn{display:inline-block;padding:12px 16px;border-radius:12px;background:linear-gradient(180deg,var(--btn),var(--btn-edge));color:var(--btn-text);text-decoration:none;font-weight:600;box-shadow:0 6px 0 var(--btn-edge),0 12px 20px rgba(0,0,0,.06);transition:transform .05s ease,box-shadow .15s ease}
        a.btn:hover{box-shadow:0 5px 0 var(--btn-edge),0 10px 16px rgba(0,0,0,.07)}
        a.btn:active{transform:translateY(2px);box-shadow:0 3px 0 var(--btn-edge),0 8px 12px rgba(0,0,0,.08)}
    </style>
</head>
<body>
<% String ctx = request.getContextPath(); %>
<div class="card">
    <h1>Welcome</h1>
    <p>Register a new account or login to continue.</p>
    <div class="row">
        <a class="btn" href="<%= ctx %>/register.jsp">Register</a>
        <a class="btn" href="<%= ctx %>/login.jsp">Login</a>
    </div>
</div>
</body>
</html>