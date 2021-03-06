/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package rgms.infrastructure;

import	java.sql.*;

/**
 *
 * @author Tyler 2
 */
public class JDBCConnection {

    //My SQL Connection String
    private String databaseHost = "localhost";
    private String databaseName = "RGMS_DB";
    private String dbUrl = "jdbc:mysql://" + databaseHost + "/" + databaseName;
    
    //My SQL Credentials
    private String userName = "rgms";
    private String password = "seng2050";
    
    private Connection conn; //Create connection variable
    
    /**
     * Constructor for a JDBC connection
     * 
     * @throws ClassNotFoundException The driver class cannot be found
     * @throws InstantiationException Cannot instantiate a connection to the
     *                                JDBC driver
     * @throws IllegalAccessException Unable to access the JDBC driver
     */		
    public JDBCConnection() throws ClassNotFoundException,
            InstantiationException, IllegalAccessException {
        //Load the database driver
        Class.forName("com.mysql.jdbc.Driver").newInstance();
    }
    
    /**
     * Creates a connection to the JDBC Database
     * @throws SQLException The connection cannot be established
     */
    public void getConnection() throws	SQLException {
        //Check if the connection does not exist
        if(conn	== null || conn.isClosed()) {
            //Establish a new connection
            conn = DriverManager.getConnection(dbUrl,userName,password);
        }
    }
    
    /**
     * Closes the connection to the JDBC Database
     * @throws SQLException The connection cannot be closed
     */
    public void setDone() throws SQLException {
        //Check the connection still exists
        if(conn!=null) {
            //Close the connection
            conn.close();
            conn = null;
        }
    }

    /**
     * 
     * @return
     * @throws SQLException 
     */
    public ResultSet executeQuery(String query) throws SQLException {
        ResultSet rs = null;
        
        //Exeute the query
        try {
            Statement s = conn.createStatement();
            rs = s.executeQuery(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return rs;
    }
    
    
}