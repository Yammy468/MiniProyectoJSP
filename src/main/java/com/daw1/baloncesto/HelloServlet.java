package com.daw1.baloncesto;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    public static Connection connect() throws ClassNotFoundException, SQLException {
        String url="jdbc:sqlite:/home/zhuyana/IdeaProjects/baloncesto/balon.db";
        Class.forName("org.sqlite.JDBC");

        return DriverManager.getConnection(url);
    }
}