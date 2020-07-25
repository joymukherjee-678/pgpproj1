/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.customerDetails;

import com.BeanClassSubmitCustomerInfo.StoreCustomerDetails;
import com.modelCustomerDetails.ModelCustomerDetails;
import java.io.IOException;
import java.io.PrintWriter;

import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Joy
 */
public class InsertCustomerInfo extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
 /*   String FirstName= request.getParameter("FirstName");
          String LastName= request.getParameter("LastName");
          String gender= request.getParameter("gender");
          String email= request.getParameter("email");
            int tel= Integer.parseInt(request.getParameter("tel"));
          String password= request.getParameter("password");
          String location= request.getParameter("location");
          String FullName= request.getParameter("FullName");
          String dob= request.getParameter("dob");
          String number= request.getParameter("number"); */
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
    //        out.println("hello world");
            
       String FirstName= request.getParameter("FirstName");
          String LastName= request.getParameter("LastName");
          String gender= request.getParameter("gender");
          String email= request.getParameter("email");
       //   String   contact= request.getParameter("contact");
          String password= request.getParameter("password");
          String location= request.getParameter("location");
          String FullName= request.getParameter("FullName");
          String dob= request.getParameter("dob");
          String number= request.getParameter("number");
          String   contact= request.getParameter("contact");
            
          int l= password.length();
          
          int index = email.indexOf('@');
          
           // out.println("welcome");
          
        //    out.println(FirstName+" "+LastName+" "+gender+" "+email+" "+contact+" "+password+" "+location+" "+FullName+" "+dob+" "+number);
                  
                 if(l==5)
                 {
            
                if(password.contains("$") || password.contains("!") || password.contains("#") || password.contains("@"))
                {
                    
                    out.println("<h2 class='.selector3'>"+"password can't contain any special characters"+"</h2>");
                    
                    RequestDispatcher rd= request.getRequestDispatcher("customerRegistrationPage.jsp");
                    
                    rd.include(request, response);
                    
                }     
                 
                 else{
                    
                      if(gender.equals("male") || gender.equals("female"))
                      {
                          
                          if(index >2)
                              
                          {
                          
                          if(contact.length()== 10)
                      {
                          
                       if(number.length()== 8)
                      {
                    
                     ModelCustomerDetails mcd= new  ModelCustomerDetails(FirstName,LastName,gender,email,password,location,FullName,dob,number,contact);
                    
                    
                    StoreCustomerDetails scd= new StoreCustomerDetails();
                    
                      int row =scd.InsertData(mcd)     ;
                    
                    if(row>0)
                    {
                        //  out.println(row);
                        
                        out.println("data have been inserted successfully");
                        
                        RequestDispatcher rd = request.getRequestDispatcher("successStoreCustomerData.jsp");
                        
                                           rd.forward(request, response);
                        
                      //  out.println("<a href='successStoreCustomerData.jsp'>click on it</a>");  
                        
                    }
                  
                      }
                       
                       else{
                            
                            out.println("<h2 class='.selector1'>"+"your pan No  should be  8 digits</h2>"+"</h2>");
                     
                     RequestDispatcher rd= request.getRequestDispatcher("customerRegistrationPage.jsp");
                     
                        rd.include(request, response);  
                          
                    
                      }   
                  
                      }
                          
                           else{
                            
                            out.println("<h2 class='.selector3'>"+"your contact No should be  10 digits"+"</h2>");
                     
                     RequestDispatcher rd= request.getRequestDispatcher("customerRegistrationPage.jsp");
                     
                        rd.include(request, response);  
                          
                    
                      }
                          
                    }
                          
                       else{
                            
                            out.println("<h2 class='.selector3'>"+"your email id is not valid"+"</h2>");
                     
                     RequestDispatcher rd= request.getRequestDispatcher("customerRegistrationPage.jsp");
                     
                        rd.include(request, response);     
                          
                    
                }
                
          }
                      
                       else{
                            
                            out.println("<h2 class='.selector4'>"+"gender is not valid"+"</h2>");
                     
                     RequestDispatcher rd= request.getRequestDispatcher("customerRegistrationPage.jsp");
                     
                        rd.include(request, response);
                            
                            
                            
                        }
                }
                      
                          
                 }
                 
                 else{
                     
                     out.println("password can't be more than or less than 5 characters");
                     
                     RequestDispatcher rd= request.getRequestDispatcher("customerRegistrationPage.jsp");
                     
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
