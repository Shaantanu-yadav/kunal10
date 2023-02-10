package com.gulbrandsen.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gulbrandsen.CustomerMaster;
import com.gulbrandsen.CustomerMasterDao;
import com.gulbrandsen.controller.DbConn;


@WebServlet("/SelectAll")
public class SelectAll extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    

	public SelectAll() {
		super();
		
	}

	public void displayTable(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		try {
			
			CustomerMasterDao customerDao = new CustomerMasterDao(DbConn.getConn());
			List<CustomerMaster> displayTable = customerDao.selectAll();
			request.setAttribute("displayTable", displayTable);
			RequestDispatcher rd = request.getRequestDispatcher("customer master.jsp");
			rd.forward(request,response);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		displayTable(request, response);
	}

}
