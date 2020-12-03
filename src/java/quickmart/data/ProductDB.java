/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quickmart.data;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import murach.sql.*;
import quickmart.business.*;
import quickmart.util.*;

/**
 *
 * @author Justin Lazarski
 */
public class ProductDB {

    //This method returns null if a product isn't found.
    public static Product selectProduct(String productNumber) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT * FROM products "
                + "WHERE productNumber = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, productNumber);
            rs = ps.executeQuery();
            if (rs.next()) {
                Product p = new Product();
                //p.setId(rs.getLong("ProductID"));
                p.setCode(rs.getString("productNumber"));
                p.setDescription(rs.getString("name"));
                p.setPrice(rs.getDouble("price"));
                return p;
            } else {
                return null;
            }
        } catch (SQLException e) {
            System.err.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    //This method returns null if a product isn't found.
    public static Product selectProduct(long productNumber) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT * FROM products "
                + "WHERE productNumber = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setLong(1, productNumber);
            rs = ps.executeQuery();
            if (rs.next()) {
                Product p = new Product();
                //p.setId(rs.getLong("ProductID"));
                p.setCode(rs.getString("productNumber"));
                p.setDescription(rs.getString("name"));
                p.setPrice(rs.getDouble("price"));
                return p;
            } else {
                return null;
            }
        } catch (SQLException e) {
            System.err.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    //This method returns null if a product isn't found.
    public static List<Product> selectProducts() {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT * FROM products";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            ArrayList<Product> products = new ArrayList<>();
            while (rs.next()) {
                Product p = new Product();
                p.setCode(rs.getString("productNumber"));
                p.setDescription(rs.getString("name"));
                p.setPrice(rs.getDouble("price"));
                products.add(p);
            }
            return products;
        } catch (SQLException e) {
            System.err.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

}
