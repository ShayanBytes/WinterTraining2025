package com.example.auth;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String user = req.getParameter("username");
        String pass = req.getParameter("password");

        // Use the RegisterServlet to check stored users
        if (RegisterServlet.check(user, pass)) {

            // Create/attach session to remember the user
            req.getSession().setAttribute("user", user);

            // Redirect to profile page
            String contextPath = req.getContextPath();
            resp.sendRedirect(contextPath + "/profile.jsp");

        } else {
            resp.getWriter().println("Invalid username or password!");
        }
    }
}
