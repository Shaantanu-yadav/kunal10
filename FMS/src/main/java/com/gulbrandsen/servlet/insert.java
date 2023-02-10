package com.gulbrandsen.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gulbrandsen.CustomerMaster;
import com.gulbrandsen.CustomerMasterDao;
import com.gulbrandsen.controller.DbConn;

@WebServlet("/insert")
public class insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public insert() {
		super();

	}

	protected void insertRow(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		CustomerMasterDao CustomerDao = new CustomerMasterDao(DbConn.getConn());

		String customercode = request.getParameter("customercode");
		String customername = request.getParameter("customername");
		String productgiven = request.getParameter("productgiven");
		String sapcustomercode = request.getParameter("sapcustomercode");
		String salesrep = request.getParameter("salesrep");
		String remarks = request.getParameter("remarks");
		CustomerMaster newRow = new CustomerMaster(customercode, customername, productgiven, sapcustomercode, salesrep,
				remarks);

		CustomerDao.insertRecord(newRow);
		response.sendRedirect("customer master.jsp");
		response.getWriter().append("Served at: ").append(request.getContextPath());

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			insertRow(request,response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}

}
