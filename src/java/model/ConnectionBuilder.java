/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author chakree30584
 */
public class ConnectionBuilder {
    //static String url = "jdbc:derby://localhost:1527/boot";
    //static String driver = "org.apache.derby.jdbc.ClientDriver";
    //static String user = "app";
    //static String pass = "app";
    static String url = "jdbc:mysql://localhost:3306/bike";
    static String driver = "com.mysql.jdbc.Driver";
    static String user = "root";
    static String pass = "";
    public static Connection getConnection(){
        try {
            Class.forName(driver);
            return DriverManager.getConnection(url+"?useUnicode=true&characterEncoding=UTF-8", user, pass);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConnectionBuilder.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionBuilder.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
