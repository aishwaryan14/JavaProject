package com.extras;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class FileUploadDao {

    private static final String url = "jdbc:mysql://localhost:3306/finaldb?useSSL=false";
    private static final String user = "root";
    private static final String password = "mysql";
    String department1 = "";
    String semester1 = "";
    String subject1 = "";
    String description1="";
    
    private static final String sql = "INSERT INTO final (department,semester,subject,description,file) values (?, ?, ?,?,?)";
    public int uploadFile(InputStream file,String department,String semester,String subject,String description) {
        int row = 0;
        department1 = department;
        semester1 = semester;
        subject1 = subject;
        description1 = description;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }
        
        try (Connection connection = DriverManager
            .getConnection(url, user, password);
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection
            .prepareStatement(sql)) {

        	preparedStatement.setString(1,department1);
        	preparedStatement.setString(2,semester1);
        	preparedStatement.setString(3,subject1);
        	preparedStatement.setString(4,description1);
            if (file != null) {
                // fetches input stream of the upload file for the blob column
                preparedStatement.setBlob(5, file);
            }

            // sends the statement to the database server
            row = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return row;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}