/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbaccessor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customer;

/**
 *
 * @author Ninad
 */

public class CustomerDAO
{
    Connection conn;
    ResultSet rs;
    
    public CustomerDAO()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mydb","localdb","Localdb123");
        }
        catch (ClassNotFoundException ex)
        {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (InstantiationException ex)
        {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (IllegalAccessException ex)
        {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (SQLException ex)
        {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public List<Customer> getAll()
    {
        List<Customer> ret = new ArrayList<Customer>();
        try
        {
            this.rs = conn.prepareStatement("SELECT * FROM mydb.customer;").executeQuery();
            while(this.rs.next())
            {
                Customer cus = new Customer();
                cus.setEmail(this.rs.getString("email"));
                cus.setName(this.rs.getString("name"));
                cus.setPhone(this.rs.getString("phone"));
                cus.setAddress(this.rs.getString("address"));
                cus.setCityRegion(this.rs.getString("city_region"));
                cus.setCcNumber(this.rs.getString("cc_number"));
                LoginDAO loginDAO = new LoginDAO();
                cus.setLogin(loginDAO.getLoginFromID(this.rs.getString("email")));
                ret.add(cus);
            }
        }
        catch (SQLException ex)
        {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ret;
    }
    
    public Customer getCustomerFromID(String email)
    {
        Customer ret = new Customer();
        try
        {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM mydb.customer"
                    + "WHERE email = ?;");
            ps.setString(1, email);
            this.rs = ps.executeQuery();
            while(this.rs.next())
            {
                Customer cus = new Customer();
                cus.setEmail(this.rs.getString("email"));
                cus.setName(this.rs.getString("name"));
                cus.setPhone(this.rs.getString("phone"));
                cus.setAddress(this.rs.getString("address"));
                cus.setCityRegion(this.rs.getString("city_region"));
                cus.setCcNumber(this.rs.getString("cc_number"));
                LoginDAO loginDAO = new LoginDAO();
                cus.setLogin(loginDAO.getLoginFromID(this.rs.getString("email")));
                ret = cus;
            }
        }
        catch (SQLException ex)
        {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ret;
    }
}