// Java Program to Retrieve Contents of a Table Using JDBC
// connection

// Showing linking of created database

// Importing SQL libraries to create database

import java.sql.*;

public class connection {

	Connection con = null;

	public static Connection connectDB()

	{

		try {
			// Importing and registering drivers
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/MiniProject",
				"root", "Namith98821@mysql");
			// here,root is the username and 1234 is the
			// password,you can set your own username and
			// password.
                        System.out.println("here");
			return con;
		}
		catch (Exception e) {
                        System.out.println("hre");
			System.out.println(e);
		}
            return null;
	}
}
