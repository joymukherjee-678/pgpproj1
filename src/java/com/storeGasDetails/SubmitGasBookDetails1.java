/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.storeGasDetails;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Joy
 */
@WebServlet(name = "SubmitGasBookDetails1", urlPatterns = {"/SubmitGasBookDetails1"})
public class SubmitGasBookDetails1 extends HttpServlet {

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
          
             String contact= request.getParameter("contact");
            
            String aadhaarNumber= request.getParameter("aadhaarNumber");
          
          String distributerLocation= request.getParameter("distributerLocation");
        
         String gasName = request.getParameter("gasName");
         
         String distributerContact = request.getParameter("distributerContact");
            
           HttpSession session = request.getSession();
          
          String customerID= String.valueOf(System.currentTimeMillis());;
          
         //    char[] c= customerID.toCharArray();
             
            int b=customerID.length()-2;
int e=customerID.length();

 String custID= customerID.substring(b,e);

            session.setAttribute("customerID", custID);
             
            session.setAttribute("customerID", customerID);
          
         SimpleDateFormat formatter = new SimpleDateFormat("dd.MM.yyyy HH:mm:ss");  
    Date date = new Date();  
    String registerDate = formatter.format(date);   
   // System.out.println(formatDateTime);    
          
           String gasBookNo=String.valueOf(System.currentTimeMillis());
             
           String status="issued";
           
             SimpleDateFormat formatter1 = new SimpleDateFormat("dd.MM.yyyy HH:mm:ss");  
    Date date1 = new Date();  
    String deliveryDate = formatter.format(date1);   
           
                session.setAttribute("status", status);
                session.setAttribute("issueDate", deliveryDate);
                session.setAttribute("gasBookNo", gasBookNo);  
                
              
                
                  
                 
                 int i=0;
                 
                 if(contact.length()== 10)
                 {
                 
                   if(aadhaarNumber.length()== 8)
                 {
                         
                       if(distributerContact.length()== 10)
                   {
                     
                     ModelGasBookDetails mgbd = new ModelGasBookDetails( contact,  aadhaarNumber, distributerLocation,  gasName,  custID,  registerDate,  gasBookNo, status, distributerContact);
                
                  DaoGasBookDetails dgbd= new DaoGasBookDetails();
                
                 int no_of_rows= dgbd.insertData(mgbd);
                     
                 if(no_of_rows >i)
                 {
                     
                     out.println("row get affected");
                     
                     i++;
                     
                     RequestDispatcher rd = request.getRequestDispatcher("successGasBooking.jsp");
                     
                                 rd.forward(request, response);
                     
                 }
                    
                 }
                       
                     else{
                     
                       out.println("<h2 class='.selector4'>"+" Distributer Contact No should be 10 digit"+"</h2>");
                     
                     RequestDispatcher rd= request.getRequestDispatcher("bookGas1.jsp");
                     
                        rd.include(request, response);     
                     
                     
                 }  
                        
                 
                 }
                 
                   else{
                       
                        out.println("<h2 class='.selector4'>"+"Aadhaar Number should be 8 digit"+"</h2>");
                     
                     RequestDispatcher rd= request.getRequestDispatcher("bookGas1.jsp");
                     
                        rd.include(request, response);
                       
                       
                   }
                   
                 }
                 else{
                     
                       out.println("<h2 class='.selector4'>"+" Your Contact No should be 10 digit"+"</h2>");
                     
                     RequestDispatcher rd= request.getRequestDispatcher("bookGas1.jsp");
                     
                        rd.include(request, response);     
                     
                     
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
