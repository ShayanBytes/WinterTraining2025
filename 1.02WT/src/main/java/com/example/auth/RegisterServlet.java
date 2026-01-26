package com.example.auth;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
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
    private static final Map<String, User> users = new HashMap<>();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String roll = req.getParameter("roll");
        String className = req.getParameter("className");
        String stream = req.getParameter("stream");
        String department = req.getParameter("department");

        if (username == null || username.isBlank() || password == null || password.isBlank()) {
            req.setAttribute("error", "Username and password are required");
            // Preserve entered fields
            req.setAttribute("formUsername", username);
            req.setAttribute("formRoll", roll);
            req.setAttribute("formClassName", className);
            req.setAttribute("formStream", stream);
            req.setAttribute("formDepartment", department);
            RequestDispatcher rd = req.getRequestDispatcher("register.jsp");
            rd.forward(req, resp);
            return;
        }

        // Check if user already exists
        if (users.containsKey(username)) {
            req.setAttribute("error", "User already exists. Please login.");
            // Preserve entered fields
            req.setAttribute("formUsername", username);
            req.setAttribute("formRoll", roll);
            req.setAttribute("formClassName", className);
            req.setAttribute("formStream", stream);
            req.setAttribute("formDepartment", department);
            RequestDispatcher rd = req.getRequestDispatcher("register.jsp");
            rd.forward(req, resp);
            return;
        }

        // Add user to map
        User user = new User(username, password, roll, className, stream, department);
        users.put(username, user);

        // Redirect to login page with success flag
        String contextPath = req.getContextPath();
        resp.sendRedirect(contextPath + "/login.jsp?registered=1");
    }

    // Helper method for login to check users
    public static boolean check(String username, String password) {
        User u = users.get(username);
        return u != null && u.getPassword().equals(password);
    }

    public static User getUser(String username) {
        return users.get(username);
    }
}
