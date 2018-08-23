/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com;

import db.DBUtils;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Staff;

/**
 *
 * @author Thang
 */
public class DataAccess {
//    public void addNew(Staff n){
//        try {
//            PreparedStatement ps = DBUtils.getPreparedStatement("insert into News values(?,?,?,?,?,?)");
//            ps.setString(1, n.getTitle());
//            ps.setString(2, n.getDate());
//            ps.setString(3, n.getDescription());
//            ps.setString(4, n.getDetail());
//            ps.setString(5, n.getCategory());
//            ps.setString(6, n.getImage());
//            ps.executeUpdate();
//            
//        } catch (ClassNotFoundException | SQLException ex) {
//            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
    
    public static List<Staff> getAll(){
        List<Staff> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from Staff").executeQuery();
            while(rs.next()){
                Staff n = new Staff(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(9));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    

    
    public static List<Staff> getStaffById(int id){
        List<Staff> ls = new LinkedList<>();
        String sql = "select * from Staff where id = " +id;
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                Staff n = new Staff(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(9));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    //    private int id;
//    private String name;
//    private String nic;
//    private String email;
//    private String dob;
//    private String joinedDate;
//    private String address;
//    private int contact;
//    private String staffType;
    
    public void edit(String nic, String name, String email, String dob, String joined_date, String address, int contact_no, String staff_type){
        try {
            String sql = "update Staff SET nic = ?, name = ?, email = ?, dob = ?, joined_date = ?, address = ?, contact_no = ?, staff_type = ?" + " where id = ?";
            PreparedStatement ps= DBUtils.getPreparedStatement(sql);
            ps.setString(1, nic);
            ps.setString(2, name);
            ps.setString(3,email);
            ps.setString(4, dob);
            ps.setString(5, joined_date);
            ps.setString(6, address);
            ps.setInt(7, contact_no);
            ps.setString(9, staff_type);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void delete(int id){
        try {
            String sql = "delete News where id = ?";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
