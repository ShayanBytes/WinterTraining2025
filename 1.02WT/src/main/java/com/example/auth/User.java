package com.example.auth;

public class User {
    private String username;
    private String password;
    private String roll;
    private String className;
    private String stream;
    private String department;

    public User(String username, String password, String roll, String className, String stream, String department) {
        this.username = username;
        this.password = password;
        this.roll = roll;
        this.className = className;
        this.stream = stream;
        this.department = department;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getRoll() {
        return roll;
    }

    public String getClassName() {
        return className;
    }

    public String getStream() {
        return stream;
    }

    public String getDepartment() {
        return department;
    }
}

