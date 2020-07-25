/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.distributerInfo;

import com.storeGas.SubmitGasBookDetails;
import com.BeanClassSubmitCustomerInfo.StoreCustomerDetails;
import com.modelCustomerDetails.ModelCustomerDetails;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Joy
 */
public class InsertDistributerInfo extends HttpServlet {

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
           
             String firstName= request.getParameter("firstName");
          String lastName= request.getParameter("lastName");
          String gender= request.getParameter("gender");
          String email= request.getParameter("email");
          String   contact= request.getParameter("contact");
          String aadharNumber= request.getParameter("aadharNumber");
          String password= request.getParameter("password");
          String panNumber= request.getParameter("panNumber");
          String fullName= request.getParameter("fullName");
          String distributerLocation= request.getParameter("distributerLocation");
          String adminEmail= request.getParameter("adminEmail");
          
         // String FullName= request.getParameter("FullName");
      //    String dob= request.getParameter("dob");
       //   String number= request.getParameter("number");
         // String   contact= request.getParameter("contact");
            
         HttpSession session= request.getSession();
          int l= password.length();
          
           int index = email.indexOf('@');
           
           int index2 = adminEmail.indexOf('@');
          
     /*      SimpleDateFormat formatter = new SimpleDateFormat("dd.MM.yyyy HH:mm:ss");  
    Date date = new Date(); 
    
    String issueDate = (String)session.getAttribute("issueDate");
    
   // System.out.println(formatDateTime);    
          
           String gasBookNo=(String)session.getAttribute("gasBookNo");
             
           String status=(String)session.getAttribute("status"); */
          
           
           
           // out.println("welcome");
          
        //    out.println(FirstName+" "+LastName+" "+gender+" "+email+" "+contact+" "+password+" "+location+" "+FullName+" "+dob+" "+number);
                  
                 if(l == 5)
                 {
            
                if(password.contains("$") || password.contains("!") || password.contains("#") || password.contains("@"))
                {
                    
                    out.println("<h2 class='.selector6'>"+"password can't contain any special characters"+"</h2>");
                    
                    RequestDispatcher rd= request.getRequestDispatcher("distributerRegistrationPage.jsp");
                    
                    rd.include(request, response);
                    
                }     
                 
                 else{
                    
                        if(gender.equals("male") || gender.equals("female"))
                      {
                             
                           if(index >2)
                              
                          {
                          
                          if(contact.length()== 10)
                      {
                          
                          if(aadharNumber.length()== 8)
                      {
                          
                          if(panNumber.length()== 8)
                      {
                          
                           if(index2 >2)
                              
                          { 
                          
                     ModelDistributerDetails mdd= new  ModelDistributerDetails(firstName,lastName,gender,email,contact,aadharNumber,password,panNumber,fullName,distributerLocation, adminEmail);
                    
                    
                    StoreDistributerDetails sdd= new StoreDistributerDetails();
                    
                      int row =sdd.InsertData(mdd)     ;
                    
                    if(row>0)
                    {
                        //  out.println(row);
                        
                        out.println("data have been insert successfully");
                        
                        RequestDispatcher rd = request.getRequestDispatcher("successStoreDistributerData.jsp");
                        
                                           rd.forward(request, response);
                        
                      //  out.println("<a href='successStoreCustomerData.jsp'>click on it</a>");  
                        
                    }
                    
                          }
                           
                            else{
                            
                            out.println("<h2 class='.selector3'>"+"Admin email id is not valid"+"</h2>");
                     
                     RequestDispatcher rd= request.getRequestDispatcher("distributerRegistrationPage.jsp");
                     
                        rd.include(request, response);     
                          
                    
                   }
                           
                    
                      }
                          
                        else{
                            
                            out.println("<h2 class='.selector1'>"+"your pan No  should be  8 digits</h2>"+"</h2>");
                     
                     RequestDispatcher rd= request.getRequestDispatcher("distributerRegistrationPage.jsp");
                     
                        rd.include(request, response);  
                          
                    
                      }   
                          
                    
                      }
                    
                           else{
                            
                            out.println("<h2 class='.selector2'>"+"your aadhar No should be  8 digits"+"</h2>");
                     
                     RequestDispatcher rd= request.getRequestDispatcher("distributerRegistrationPage.jsp");
                     
                        rd.include(request, response);  
                          
                    
                      } 
                          
                          
                      }
                          
                          
                      
                         else{
                            
                            out.println("<h2 class='.selector3'>"+"your contact No should be  10 digits"+"</h2>");
                     
                     RequestDispatcher rd= request.getRequestDispatcher("distributerRegistrationPage.jsp");
                     
                        rd.include(request, response);  
                          
                    
                      }
                       
                          }
                           
                            else{
                            
                            out.println("<h2 class='.selector3'>"+"your email id is not valid"+"</h2>");
                     
                     RequestDispatcher rd= request.getRequestDispatcher("distributerRegistrationPage.jsp");
                     
                        rd.include(request, response);     
                          
                    
                }
                          
                      }
                          
                        else{
                            
                            out.println("<h2 class='.selector4'>"+"gender is not valid"+"</h2>");
                     
                     RequestDispatcher rd= request.getRequestDispatcher("distributerRegistrationPage.jsp");
                     
                        rd.include(request, response);
                            
                            
                            
                        }
                    
                }
                
                 }
                 
                 
        
                 else{
                     
                     out.println("<h2 class='.selector5'>"+"password can't be more than or less than 5 characters"+"</h2>");
                     
                     RequestDispatcher rd= request.getRequestDispatcher("distributerRegistrationPage.jsp");
                     
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
      

                            