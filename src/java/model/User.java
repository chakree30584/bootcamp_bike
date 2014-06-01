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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author chakree30584
 */
public class User {

    private String name;
    private int position;
    private String mail;
    private String tel;
    private int id;
    private String pass;
    private int ban;

    public User() {
    }

    public User(String name, int position, String mail, String tel, int id, String pass, int ban) {
        this.name = name;
        this.position = position;
        this.mail = mail;
        this.tel = tel;
        this.id = id;
        this.pass = pass;
        this.ban = ban;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPosition() {
        return position;
    }

    public void setPosition(int position) {
        this.position = position;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getBan() {
        return ban;
    }

    public void setBan(int ban) {
        this.ban = ban;
    }

    public static User login(String mail, String password) {
        User user = null;
        String sqlCmd = "SELECT * FROM USERS WHERE MAIL LIKE ? AND PASSWORD LIKE ?";
        try {
            Connection con = ConnectionBuilder.getConnection();
            PreparedStatement stm = con.prepareStatement(sqlCmd);
            stm.setString(1, mail);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("ID"));
                user.setPass(rs.getString("PASSWORD"));
                user.setName(rs.getString("NAME"));
                user.setPosition(rs.getInt("POSITION"));
                user.setMail(rs.getString("MAIL"));
                user.setTel(rs.getString("TEL"));
                user.setBan(rs.getInt("BAN"));
            }
        } catch (SQLException ex) {
            System.err.println(ex);
        }
        return user;
    }

    public static User getUserByMail(String mail) {
        User user = null;
        String sqlCmd = "SELECT * FROM USERS WHERE MAIL LIKE ?";
        try {
            Connection con = ConnectionBuilder.getConnection();
            PreparedStatement stm = con.prepareStatement(sqlCmd);
            stm.setString(1, mail);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("ID"));
                user.setPass(rs.getString("PASSWORD"));
                user.setName(rs.getString("NAME"));
                user.setPosition(rs.getInt("POSITION"));
                user.setMail(rs.getString("MAIL"));
                user.setTel(rs.getString("TEL"));
                user.setBan(rs.getInt("BAN"));
            }
        } catch (SQLException ex) {
            System.err.println(ex);
        }
        return user;
    }

    public static int getNewId() {
        String sqlCmd = "SELECT id FROM USERS ORDER BY ID DESC LIMIT 1";
        try {
            Connection con = ConnectionBuilder.getConnection();
            PreparedStatement stm = con.prepareStatement(sqlCmd);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt("id") + 1;
            }
        } catch (SQLException ex) {
            System.err.println(ex);
        }
        return 0;
    }

    public static boolean addUser(User newuser) {
        int status = 0;
        if (getUserByMail(newuser.getMail()) == null) {
            String sqlCmd = "INSERT INTO USERS(`ID`,`PASSWORD`,`NAME`,`POSITION`,`MAIL`,`TEL`,`BAN`) "
                    + " VALUES(?,?,?,?,?,?,0);";
            try {
                Connection con = ConnectionBuilder.getConnection();
                PreparedStatement stm = con.prepareStatement(sqlCmd);
                stm.setInt(1, getNewId());
                stm.setString(2, newuser.getPass());
                stm.setString(3, newuser.getName());
                stm.setInt(4, newuser.getPosition());
                stm.setString(5, newuser.getMail());
                stm.setString(6, newuser.getTel());
                status = stm.executeUpdate();
            } catch (SQLException ex) {
                System.err.println(ex);
            }
        }
        return status > 0;
    }

    public boolean updateUser() {
        int status = 0;
        String sqlCmd = "UPDATE USERS SET `PASSWORD` = ?, `NAME` = ?, POSITION = ?, `TEL` = ?, ban= ? where id = ?";
        try {
            Connection con = ConnectionBuilder.getConnection();
            PreparedStatement stm = con.prepareStatement(sqlCmd);
            stm.setString(1, this.getPass());
            stm.setString(2, this.getName());
            stm.setInt(3, this.getPosition());
            stm.setString(4, this.getTel());
            stm.setInt(5, this.getBan());
            stm.setInt(6, this.getId());
            status = stm.executeUpdate();
            System.out.println(status);
        } catch (SQLException ex) {
            System.err.println(ex);
        }
        return status > 0;
    }

    public static ArrayList<User> getAllUser() {
        ArrayList<User> arrUser = new ArrayList<User>();
        User user = null;
        try {
            Connection con = ConnectionBuilder.getConnection();
            String sqlCmd = "SELECT * FROM users ORDER BY ID ASC";
            PreparedStatement stm = con.prepareStatement(sqlCmd);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                user = new User();
                user.setId(rs.getInt("ID"));
                user.setPass(rs.getString("PASSWORD"));
                user.setName(rs.getString("NAME"));
                user.setPosition(rs.getInt("POSITION"));
                user.setMail(rs.getString("MAIL"));
                user.setTel(rs.getString("TEL"));
                user.setBan(rs.getInt("BAN"));
                arrUser.add(user);
                user = null;
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return arrUser;
    }

    public int getPoint() {
        int point = 0;
        String sqlCmd = "SELECT SUM(`POINT`) AS POINT FROM POINT WHERE ID = ?";
        try {
            Connection con = ConnectionBuilder.getConnection();
            PreparedStatement stm = con.prepareStatement(sqlCmd);
            stm.setInt(1, this.getId());
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                point = rs.getInt("POINT");
            }
        } catch (SQLException ex) {
            System.err.println(ex);
        }
        return point;
    }

    public boolean addPoint(int newpoint, String actionp) {
        int status = 0;
        String sqlCmd = "INSERT INTO `point`(`id`, `time`, `actionp`, `point`) VALUES (?,now(),?,?)";
        try {
            Connection con = ConnectionBuilder.getConnection();
            PreparedStatement stm = con.prepareStatement(sqlCmd);
            stm.setInt(1, this.getId());
            stm.setString(2, actionp);
            stm.setInt(3, newpoint);
            status = stm.executeUpdate();
        } catch (SQLException ex) {
            System.err.println(ex);
        }
        return status > 0;
    }

    public static User getById(int id) {
        User a = null;
        try {
            Connection con = ConnectionBuilder.getConnection();
            PreparedStatement stm = con.prepareStatement("select * from users where id = ?");
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            a = new User();
            while (rs.next()) {
                a.setBan(rs.getInt("ban"));
                a.setId(rs.getInt("id"));
                a.setMail(rs.getString("mail"));
                a.setName(rs.getString("name"));
                a.setPass(rs.getString("password"));
                a.setPosition(rs.getInt("position"));
                a.setTel(rs.getString("tel"));

            }
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        return a;
    }

}
