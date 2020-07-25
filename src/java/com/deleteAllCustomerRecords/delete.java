/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.deleteAllCustomerRecords;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Joy
 */
@WebServlet(name = "delete", urlPatterns = {"/delete"})
public class delete extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
       
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           
            String customerID = request.getParameter("customerID");
               
               DaoClass dc = new DaoClass( );
         
               String contact =  dc.retrieveContact(customerID);
               
                   String deliveryDate =  dc.retrieveDeliveryDate(contact); 
                   
                   // out.println(deliveryDate);
               
              int row1=   dc.removeData1(contact);
            
              int row2=   dc.removeData2(customerID);
            
               int row3 = dc.removeData3(deliveryDate);
               
               int row4 = dc.removeData4(customerID);
            
                //int row5 = dc.removeData5(customerID);
                
                int row6 = dc.removeData6(contact);
                
                int row7 = dc.removeData7(contact);
                
                  int row8 = dc.removeData8(contact);
                  
                  int row9 = dc.removeData9(customerID);
                  
                  int row10 = dc.removeData10(contact);
               
                if(row1 >0 && row2 >0 && row3 >0 && row4 >0 && row6 >0 && row7 >0 && row8 >0 && row9 >0 && row10 >0)
                {
                    
                    
                    RequestDispatcher rd = request.getRequestDispatcher("delete2.jsp");
                    
                     rd.forward(request, response);
                    
                    
                    
                }
                
                else{
                    
                    RequestDispatcher rd = request.getRequestDispatcher("noData.jsp");
                    
                       rd.forward(request, response);
                    
                }
                
                
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
