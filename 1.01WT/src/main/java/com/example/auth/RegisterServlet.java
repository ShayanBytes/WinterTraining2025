package com.example.auth;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    // Temporary in-memory user storage
    private static final Map<String, String> users = new HashMap<>();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String user = req.getParameter("username");
        String pass = req.getParameter("password");

        // Check if user already exists
        if (users.containsKey(user)) {
            resp.getWriter().println("User already exists! Try login.");
            return;
        }

        // Add user to map
        users.put(user, pass);

        // Redirect to login page
        resp.sendRedirect("login.jsp");
    }

    // Helper method for login to check users
    public static boolean check(String user, String pass) {
        return users.containsKey(user) && users.get(user).equals(pass);
    }
}
