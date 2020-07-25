/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.storeGas;
import com.distributerInfo.InsertDistributerInfo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.storeGas.StoreGasBookDetailsInBeanClass;
import com.storeGas.StoreGasBookDetailsInDatabase;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
/**
 *
 * @author Joy
 */
public class SubmitGasBookDetails extends HttpServlet {

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
            String aadhaarNumber= request.getParameter("aadharNumber");
          String password= request.getParameter("password");
          String panNumber= request.getParameter("panNumber");
          String customerLocation= request.getParameter("customerLocation");
          String distributerLocation= request.getParameter("distributerLocation");
         // String registerDate= request.getParameter("registerDate");
          String contact= request.getParameter("contact");
          String gasName = request.getParameter("gasName");
          
          HttpSession session = request.getSession();
          
          String customerID= session.getId();
          
         //    char[] c= customerID.toCharArray();
             
            int b=customerID.length()-2;
int e=customerID.length();

 String custID= customerID.substring(b,e);

            session.setAttribute("customerID", customerID);
             
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
                session.setAttribute("issueDate", registerDate);
                session.setAttribute("gasBookNo", gasBookNo);
    
          int l= password.length();
            out.println("welcome");
          
            out.println(firstName+" "+lastName+""+registerDate);
                  
                 if(l==5)
                 {
                     
                if(password.contains("@") || password.contains("$") || password.contains("!") || password.contains("#"))
                {
          
          out.println("password can't contain any special characters");
                     
                     RequestDispatcher rd= request.getRequestDispatcher("bookGas.jsp");
                     
                        rd.include(request, response);
                     
                }     
                 
                 else{
                     
                    StoreGasBookDetailsInBeanClass   sbi,sbi1;
                     
                       sbi= new StoreGasBookDetailsInBeanClass( firstName,  lastName,  gender,  email,  aadhaarNumber, password, panNumber, customerLocation,distributerLocation,registerDate, contact, custID, gasBookNo, status, gasName);
                       
                        sbi1= new StoreGasBookDetailsInBeanClass( );
                    
                            sbi1.deliveryStatus(firstName, lastName, gender, email, aadhaarNumber, password, panNumber, customerLocation, distributerLocation, deliveryDate, contact, custID, gasBookNo, status, gasName);
          
                      out.println(sbi.getFirstName()+" "+sbi.getRegisterDate()+""+sbi.getContact());
                    
                    
                StoreGasBookDetailsInDatabase   sd= new StoreGasBookDetailsInDatabase( );  
                      
                 int row =sd.InsertData(sbi)     ;
                 
                 int row1=  sd.getData(sbi);
                 
                 int row2= sd.storeData(sbi1);
                 
                     out.println(row+""+row1+""+row2);
                     
                     if(row>0)
                     {
                         
                         out.println("<a href='successGasbooking.jsp'>click on it</a>");
                         
                     }
                     
                 }
                
                 }
                 
                 else{
                     
                     out.println("password can't be more than or less than 5 characters");
                     
                     RequestDispatcher rd= request.getRequestDispatcher("bookGas.jsp");
                     
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
