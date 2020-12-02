/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quickmart.util;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import java.util.*;

import quickmart.business.*;
import quickmart.data.*;

/**
 *
 * @author Justin Lazarski
 */
public class CartContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent event) {
        
        ServletContext sc = event.getServletContext();

        // initialize the customer service email address
        String custServEmail = sc.getInitParameter("custServEmail");
        sc.setAttribute("custServEmail", custServEmail);

        // initialize the current year
        GregorianCalendar currentDate = new GregorianCalendar();
        int currentYear = currentDate.get(Calendar.YEAR);
        sc.setAttribute("currentYear", currentYear);

        // initialize the path for the products text file
        String productsPath = sc.getRealPath("/WEB-INF/products.txt");
        sc.setAttribute("productsPath", productsPath);

        // initialize the list of products
        ArrayList<Product> products = ProductIO.getProducts(productsPath);
        sc.setAttribute("products", products);
    }

    @Override
    public void contextDestroyed(ServletContextEvent event) {
        // no cleanup necessary
    }
}
