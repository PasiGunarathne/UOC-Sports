/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

/**
 *
 * @author Thang
 */
public class Staff {
    private String name;
    private String nic;
    private String email;
    private String dob;
    private String joinedDate;
    private String address;
    private int contact;
    private String staffType;
    
    //6 line

    public Staff(String name, String nic, String email, String dob, String joinedDate, String address, int contact, String staffType) {
        this.name = name;
        this.nic = nic;
        this.email = email;
        this.dob = dob;
        this.joinedDate = joinedDate;
        this.address = address;
        this.contact = contact;
        this.staffType = staffType;
    }
    
    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getJoinedDate() {
        return joinedDate;
    }

    public void setJoinedDate(String joinedDate) {
        this.joinedDate = joinedDate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getContact() {
        return contact;
    }

    public void setContact(int contact) {
        this.contact = contact;
    }

    public String getStaffType() {
        return staffType;
    }

    public void setStaffType(String staffType) {
        this.staffType = staffType;
    }
    
    
}
