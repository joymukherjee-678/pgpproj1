/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.distributerSigninInfo;

import com.signinDetails.ModelCustomerLoginDetails;
import com.signinDetails.ValidateCustomerLoginDetails;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Joy
 */
public class DistributerLoginInfo extends HttpServlet {

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
           String email= request.getParameter("email");
            
                String password= request.getParameter("password");
                
                 String email1="null",password1="null";
                
                    //out.println(email+""+password);
                
                  ModelDistributerLoginDetails mdl= new ModelDistributerLoginDetails(email,password);
                
                
                  
                  ValidateDistributerLoginDetails vdld= new ValidateDistributerLoginDetails( );
                
                     //     out.println(email+""+password); 
                   
                   List l= vdld.GetData(mdl);
                   
                    Iterator i= l.listIterator();
                    
                      int j=0;
                      
                    //  String email2="nUll",password2="null";
                    
                      while(i.hasNext())
                      {
                          
                         if(j==0)   
                         {
                             
                             email1=(String)i.next();
                             
                             out.println(email1);
                             
                         }
                         
                          if(j==1)   
                         {
                             
                             password1=(String)i.next();
                             
                              out.println(password1);
                             
                         }
                          
                          j++;
                          
                      }
                      
                      if(email1.equals(email) && password1.equals(password))
                      {
                          
                        RequestDispatcher rd = request.getRequestDispatcher("successDistributerValidate.jsp");
                          
                                            rd.forward(request, response);
                        
                       //  out.println("<a href='successValidate.jsp'>click on it</a>");
                          
                          
                      }
                      
                    else
                      {
                          
                          RequestDispatcher rd= request.getRequestDispatcher("distributerSigninPage.jsp");
                          
                              rd.include(request, response);
                              
                              out.println("<header class='h'>invalid login</header>");
                          
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
