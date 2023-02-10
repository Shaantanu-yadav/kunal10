package com.gulbrandsen;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerMasterDao {

	private String jdbcURL = "jdbc:mysql://localhost:3306/login";
	private String jdbcUsername = "root";
	private String jdbcPassword = "password";
	private String jdbcDriver = "com.mysql.jdbc.Driver";

	String listsql = "select* from users";
	String insertsql = "insert into user"
			+ "(customer code,customer name,product group,SAP customer code,Sales Rep,Remarks)";
	String updatesql = "update user set name =?";
	String deletesql = "delete from user where id=?";
	private Connection conn;
	
	
	public CustomerMasterDao(Connection conn) {
		super();
		this.conn = conn;
	}
	//insert
	
	public void insertRecord(CustomerMaster customerMaster) throws SQLException {
		PreparedStatement ps = conn.prepareStatement(insertsql);
		ps.setString(1, customerMaster.getCustomerCode());
		ps.setString(2, customerMaster.getCustomerName());
		ps.setString(3, customerMaster.getProductGroup());
		ps.setString(4, customerMaster.getRemarks());
		ps.setString(5, customerMaster.getSalesRep());
		ps.setString(6, customerMaster.getSap());
		ps.setInt(8, customerMaster.getId());
		
	}
	public List<CustomerMaster> selectAll() throws SQLException {
		List<CustomerMaster> showRecord = new ArrayList<>();
		CustomerMaster cus = null;
		String sql ="select customer_id ,customer_code, customer_name, product_group,  SalesPerson, instruction, sap from test.customer_master";
	
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			cus = new CustomerMaster();
			cus.setCustomerCode(rs.getString(1));
			cus.setCustomerName(rs.getString(2));
			cus.setProductGroup(rs.getString(3));
			cus.setRemarks(rs.getString(4));
			cus.setSalesRep(rs.getString(5));
			cus.setSap(rs.getString(6));
			cus.setCustomerSap(rs.getString(7));
			
			showRecord.add(cus);
			
		}
		return showRecord;
	}
	public CustomerMaster getDataById(int id) {

		CustomerMaster cus= null;
		
		try {
			String sql = "select customer_code, customer_name, product_group, SalesPerson, instruction,sap from test.customer_master where customer_id=?";
			System.out.println("Update Query" +sql);
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			System.out.println("Update Query PS:" +ps);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				cus = new CustomerMaster();
				cus.setCustomerCode(rs.getString(1));
				cus.setCustomerName(rs.getString(2));
				cus.setProductGroup(rs.getString(3));
				cus.setRemarks(rs.getString(4));
				cus.setSalesRep(rs.getString(5));
				cus.setSap(rs.getString(6));
				cus.setId(id);
				
				
				
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return cus;}
}
	
	
	


	

