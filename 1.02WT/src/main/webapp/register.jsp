<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Register</title>
    <style>
        :root {
            --bg: #f6f7fb;
            --panel: #ffffff;
            --panel-edge: #eef0f4;
            --text: #2d2f33;
            --muted: #6b7280;
            --accent: #e7eaf3;
            --btn: #eef1f7;
            --btn-edge: #d7dbe6;
            --btn-text: #2a2e35;
            --ok: #e7f5ef;
            --ok-text: #1f5133;
            --err: #fdecec;
            --err-text: #6b1d1d;
        }
        * { box-sizing: border-box; }
        body {
            margin: 0; font-family: system-ui, -apple-system, Segoe UI, Roboto, Arial, sans-serif;
            background: linear-gradient(180deg, var(--bg), #eceff4);
            color: var(--text);
            min-height: 100vh; display: grid; place-items: center;
        }
        .card {
            width: 100%; max-width: 520px;
            background: linear-gradient(180deg, var(--panel), var(--panel-edge));
            border-radius: 16px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.06), 0 2px 6px rgba(0,0,0,0.04);
            padding: 24px 22px;
            border: 1px solid #e6e9ef;
        }
        h2 { margin: 0 0 12px; font-weight: 650; letter-spacing: 0.2px; }
        p.sub { margin: 0 0 18px; color: var(--muted); font-size: 0.95rem; }
        form { display: grid; gap: 12px; }
        label { font-size: 0.88rem; color: #3a3f45; }
        .row { display: grid; gap: 12px; grid-template-columns: 1fr 1fr; }
        input { width: 100%; padding: 12px 12px; border-radius: 10px; border: 1px solid #d9dde6; background: #fcfdff;
                outline: none; color: var(--text); box-shadow: inset 0 1px 0 rgba(255,255,255,0.6); }
        input:focus { border-color: #c7ccda; box-shadow: 0 0 0 3px rgba(119,141,169,0.12), inset 0 1px 0 rgba(255,255,255,0.6); }
        .btn {
            appearance: none; border: 0; cursor: pointer; padding: 12px 16px; border-radius: 12px;
            background: linear-gradient(180deg, var(--btn), var(--btn-edge));
            color: var(--btn-text); font-weight: 600; letter-spacing: 0.2px;
            box-shadow: 0 6px 0 var(--btn-edge), 0 12px 20px rgba(0,0,0,0.06);
            transition: transform 0.05s ease, box-shadow 0.15s ease;
        }
        .btn:hover { box-shadow: 0 5px 0 var(--btn-edge), 0 10px 16px rgba(0,0,0,0.07); }
        .btn:active { transform: translateY(2px); box-shadow: 0 3px 0 var(--btn-edge), 0 8px 12px rgba(0,0,0,0.08); }
        .msg { padding: 10px 12px; border-radius: 10px; border: 1px solid; font-size: 0.92rem; }
        .msg.err { background: var(--err); color: var(--err-text); border-color: #f4caca; }
        .footer { margin-top: 8px; font-size: 0.92rem; color: var(--muted); }
        a { color: #475569; text-decoration: none; border-bottom: 1px dotted #c7ccd8; }
        a:hover { color: #111827; border-color: #9aa3b2; }
    </style>
</head>
<body>
<% String ctx = request.getContextPath(); %>
<div class="card">
    <h2>Create account</h2>
    <p class="sub">Use light details below to register.</p>

    <% String error = (String) request.getAttribute("error"); if (error != null) { %>
        <div class="msg err"><%= error %></div>
    <% } %>

    <form action="<%= ctx %>/register" method="post">
        <div class="row">
            <div>
                <label>Username</label>
                <input name="username" placeholder="e.g. shayan"
                       value="<%= request.getAttribute("formUsername") != null ? request.getAttribute("formUsername") : "" %>" />
            </div>
            <div>
                <label>Password</label>
                <input name="password" type="password" placeholder="••••••••" />
            </div>
        </div>
        <div class="row">
            <div>
                <label>Roll</label>
                <input name="roll" placeholder="e.g. 42"
                       value="<%= request.getAttribute("formRoll") != null ? request.getAttribute("formRoll") : "" %>" />
            </div>
            <div>
                <label>Class</label>
                <input name="className" placeholder="e.g. 10-B"
                       value="<%= request.getAttribute("formClassName") != null ? request.getAttribute("formClassName") : "" %>" />
            </div>
        </div>
        <div class="row">
            <div>
                <label>Stream</label>
                <input name="stream" placeholder="e.g. Science"
                       value="<%= request.getAttribute("formStream") != null ? request.getAttribute("formStream") : "" %>" />
            </div>
            <div>
                <label>Department</label>
                <input name="department" placeholder="e.g. Physics"
                       value="<%= request.getAttribute("formDepartment") != null ? request.getAttribute("formDepartment") : "" %>" />
            </div>
        </div>
        <button class="btn" type="submit">Register</button>
    </form>

    <div class="footer">
        Already have an account? <a href="<%= ctx %>/login.jsp">Login</a>
    </div>
</div>
</body>
</html>
