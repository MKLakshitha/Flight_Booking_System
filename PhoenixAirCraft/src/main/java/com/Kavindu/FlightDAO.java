package com.Kavindu;


import java.awt.AWTException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class FlightDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
    private String jdbcUsername = "root";
    private String jdbcPassword = "Kavindu84";
    private static final String SELECT_USER_BY_ID = "select * from users where id =?";
    private static final String SELECT_ALL_USERS = "select * from users";
    public FlightDAO() {}

    public FlightDAO(String airline, String depature, String destination, String dateTime, int id, String price) {
		// TODO Auto-generated constructor stub
	}

	protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }
    public FlightList selectFlight(int id) {
    	FlightList flight = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
            	 
                 
                 String airline =rs.getString("Airline");
                 String depature=rs.getString("Depature");
                 String destination=rs.getString("Destination");
                 String dateTime = rs.getString("DateTime");
                 float price =  Float.parseFloat(rs.getString("Price"));
                 flight = new FlightList(airline,depature,destination,dateTime,id,price);
            }
        } catch (SQLException e) {
       
        	printSQLException(e);
        }
        return flight;
    }
    
    public List < FlightList > selectAllFlights() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List < FlightList > flight = new ArrayList < > ();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
            
            	  int id = Integer.parseInt(rs.getString("id"));
            	  String airline =rs.getString("Airline");
                  String depature=rs.getString("Depature");
                  String destination=rs.getString("Destination");
                  String dateTime = rs.getString("DateTime");
                  float price =  Float.parseFloat(rs.getString("Price"));
                flight.add(new FlightList(airline,  depature,  destination,  dateTime,  id,  price));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }

		return flight;
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
