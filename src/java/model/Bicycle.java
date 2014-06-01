/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author chakree30584
 */
public class Bicycle {

    private int bid;
    private String model;
    private int bstatus;
    private int wrent;

    public Bicycle() {
    }

    public Bicycle(int bid, String model, int bstatus, int wrent) {
        this.bid = bid;
        this.model = model;
        this.bstatus = bstatus;
        this.wrent = wrent;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getBstatus() {
        return bstatus;
    }

    public void setBstatus(int bstatus) {
        this.bstatus = bstatus;
    }

    public int getWrent() {
        return wrent;
    }

    public void setWrent(int wrent) {
        this.wrent = wrent;
    }

    public static Bicycle getBicycleById(int bid) {
        Bicycle bike = null;
        String sqlCmd = "SELECT * FROM BIKE WHERE BID LIKE ?";
        try {
            Connection con = ConnectionBuilder.getConnection();
            PreparedStatement stm = con.prepareStatement(sqlCmd);
            stm.setInt(1, bid);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                bike = new Bicycle(rs.getInt("bid"), rs.getString("model"),
                        rs.getInt("bstatus"), rs.getInt("wrent"));
            }
        } catch (SQLException ex) {
            System.err.println(ex);
        }
        return bike;
    }

    public static boolean addBicycle(String model) {
        int status = 0;
        String sqlCmd = "INSERT INTO `bike`(`bid`, `model`, `bstatus`, `wrent`) "
                + "VALUES (null,?,0,null)";
        try {
            Connection con = ConnectionBuilder.getConnection();
            PreparedStatement stm = con.prepareStatement(sqlCmd);
            stm.setString(1, model);
            status = stm.executeUpdate();
        } catch (SQLException ex) {
            System.err.println(ex);
        }
        return status > 0;
    }

    public static boolean removeBicycle(int bid) {
        int status = 0;
        if (getBicycleById(bid).getBstatus() == 0) {
            String sqlCmd = "DELETE FROM bike WHERE bid = ?";
            try {
                Connection con = ConnectionBuilder.getConnection();
                PreparedStatement stm = con.prepareStatement(sqlCmd);
                stm.setInt(1, bid);
                status = stm.executeUpdate();
            } catch (SQLException ex) {
                System.err.println(ex);
            }
        }
        return status > 0;
    }
    
    public static Bicycle getBicycle(){
        Bicycle bike = null;
        String sqlCmd = "SELECT * FROM bike WHERE bstatus = 0 ORDER BY RAND() LIMIT 1";
        try {
            Connection con = ConnectionBuilder.getConnection();
            PreparedStatement stm = con.prepareStatement(sqlCmd);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                bike = new Bicycle(rs.getInt("bid"), rs.getString("model"),
                        rs.getInt("bstatus"), rs.getInt("wrent"));
            }
        } catch (SQLException ex) {
            System.err.println(ex);
        }
        return bike;
    }
    
    public static ArrayList<Bicycle> getAllBicycle(){
        ArrayList<Bicycle> arrBicycle = new ArrayList<Bicycle>();
        Bicycle bike = null;
        try{
            Connection con = ConnectionBuilder.getConnection();
            String sqlCmd = "SELECT * FROM bike";
            PreparedStatement stm = con.prepareStatement(sqlCmd);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                bike = new Bicycle(rs.getInt("bid"), rs.getString("model"),
                        rs.getInt("bstatus"), rs.getInt("wrent"));
                arrBicycle.add(bike);
                bike = null;
            }
        }catch(SQLException ex){
            System.out.println(ex);
        }
        return arrBicycle;
    }
    public static void gendBike(int id) throws SQLException{
            Connection con = ConnectionBuilder.getConnection();
            String sqlCmd = "UPDATE bike set bstatus=1,wrent=? where bstatus=0 limit 1";
            PreparedStatement stm = con.prepareStatement(sqlCmd);
            stm.setInt(1, id);
            stm.executeUpdate();
            User a =User.getById(id);
            
            int score = a.getBan();
            score--;
            a.setBan(score*-1);
            System.out.println(a.getBan());
            a.updateUser();
            
                  
        
    }
    public static void endBike(int id) throws SQLException{
            Connection con = ConnectionBuilder.getConnection();
            String sqlCmd = "UPDATE bike set bstatus=0,wrent=null where bstatus=1 and wrent = ?";
            PreparedStatement stm = con.prepareStatement(sqlCmd);
            stm.setInt(1, id);
            stm.executeUpdate();
            User a =User.getById(id);
            a.setBan((a.getBan())*-1);
            a.updateUser();
    }
    
    public static int count() throws SQLException{
         Connection con = ConnectionBuilder.getConnection();
           String sqlCmd = "select * from bike where bstatus=0";
           PreparedStatement stm = con.prepareStatement(sqlCmd);
           ResultSet rs = stm.executeQuery();
           int a = 0;
           while(rs.next()){
               a++;
           }
        return a;
    }
    
    
    }


