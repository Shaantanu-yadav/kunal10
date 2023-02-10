package com.gulbrandsen.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Calendar;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertData
 */
@WebServlet("/InsertData")
public class InsertData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertData() {
        super();
        // TODO Auto-generated constructor stub 
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String customerCode = request.getParameter("customerCode");
		String customerName = request.getParameter("customerName");
		String productGroup = request.getParameter("productGroup");
		//String productGroup = "1";
		String sap = request.getParameter("sap");
		String salesRep = request.getParameter("salesRep");
		//String salesRep = "001";
		String remarks = request.getParameter("remarks"); 
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "password");
			
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement("insert into test.customer_master(customer_code, customer_name, product_group, sap , SalesPerson, instruction, creation_date_time) VALUES (?,?,?,?,?,?,?)");
			ps.setString(1, customerCode);
			ps.setString(2, customerName);
			ps.setString(3, productGroup);
			ps.setString(4, sap); 
			ps.setString(5, salesRep);
			ps.setString(6, remarks);
			ps.setDate(7, new java.sql.Date( Calendar.getInstance() .getTimeInMillis() ));
			int x = ps.executeUpdate();
			if(x > 0) {
	
				
				request.setAttribute("success", "Data Added Successfully");
				RequestDispatcher rd =request.getRequestDispatcher("/Customer_mst.jsp");
				rd.forward(request, response);    
			} else {
				PrintWriter out = response.getWriter();
				out.print("Not Done");
			}
			ps.close();
		}
		
		catch(Exception e) {
			PrintWriter out = response.getWriter();
			out.print(e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
	}

}
