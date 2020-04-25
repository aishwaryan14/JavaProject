package com.stud;

import java.io.File;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class DownloadFile {

	public void downloa() throws IOException {

		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;

		InputStream input = null;
		FileOutputStream output = null;

		try {
			// 1. Get a connection to database
			myConn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/files", "root", "root");

			// 2. Execute statement
			myStmt = myConn.createStatement();
			String sql = "select file from file where id=1";
			myRs = myStmt.executeQuery(sql);
			
			// 3. Set up a handle to the file
			File theFile = new File("D:\\"+myRs.toString()+".jpg");
			System.out.println("File downloaded name"+theFile);
			output = new FileOutputStream(theFile);

			if (myRs.next()) {

				input = myRs.getBinaryStream("file"); 
				System.out.println("Reading resume from database...");
				System.out.println(sql);
				
				byte[] buffer = new byte[1024];
				while (input.read(buffer) > 0) {
					output.write(buffer);
				}
				
				System.out.println("\nSaved to file: " + theFile.getAbsolutePath());
				
				System.out.println("\nCompleted successfully!");				
			}

		} catch (Exception exc) {
			exc.printStackTrace();
		} finally {
			if (input != null) {
				input.close();
			}

			if (output != null) {
				output.close();
			}
			
			close(myConn, myStmt);
		}
	}

	private static void close(Connection myConn, Statement myStmt)
			throws SQLException {

		if (myStmt != null) {
			myStmt.close();
		}

		if (myConn != null) {
			myConn.close();
		}
	}
}
