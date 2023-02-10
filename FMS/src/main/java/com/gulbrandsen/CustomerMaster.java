package com.gulbrandsen;

public class CustomerMaster {
	private int id;
	private String customerSap;
	private String customerCode;
	private String customerName;
	private String productGroup;
	private String sap;
	private String salesRep;
	private String remarks;
	
	public CustomerMaster(String customerSap, String customerCode, String customerName, String productGroup, String sap,
			String salesRep, String remarks) {
		super();
		this.customerSap = customerSap;
		this.customerCode = customerCode;
		this.customerName = customerName;
		this.productGroup = productGroup;
		this.sap = sap;
		this.salesRep = salesRep;
		this.remarks = remarks;
	}
	public CustomerMaster(int id, String customerSap, String customerCode, String customerName, String productGroup,
			String sap, String salesRep, String remarks) {
		super();
		this.id = id;
		this.customerSap = customerSap;
		this.customerCode = customerCode;
		this.customerName = customerName;
		this.productGroup = productGroup;
		this.sap = sap;
		this.salesRep = salesRep;
		this.remarks = remarks;
	}
	public String getCustomerSap() {
		return customerSap;
	}
	public void setCustomerSap(String customerSap) {
		this.customerSap = customerSap;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public CustomerMaster(int id, String customerCode, String customerName, String productGroup, String sap,
			String salesRep, String remarks) {
		super();
		this.id = id;
		this.customerCode = customerCode;
		this.customerName = customerName;
		this.productGroup = productGroup;
		this.sap = sap;
		this.salesRep = salesRep;
		this.remarks = remarks;
	}
	@Override
	public String toString() {
		return "CustomerMaster [customerCode=" + customerCode + ", customerName=" + customerName + ", productGroup="
				+ productGroup + ", sap=" + sap + ", salesRep=" + salesRep + ", remarks=" + remarks + "]";
	}
	public CustomerMaster() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CustomerMaster(String customerCode, String customerName, String productGroup, String sap, String salesRep,
			String remarks) {
		super();
		this.customerCode = customerCode;
		this.customerName = customerName;
		this.productGroup = productGroup;
		this.sap = sap;
		this.salesRep = salesRep;
		this.remarks = remarks;
	}
	public String getCustomerCode() {
		return customerCode;
	}
	public void setCustomerCode(String customerCode) {
		this.customerCode = customerCode;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getProductGroup() {
		return productGroup;
	}
	public void setProductGroup(String productGroup) {
		this.productGroup = productGroup;
	}
	public String getSap() {
		return sap;
	}
	public void setSap(String sap) {
		this.sap = sap;
	}
	public String getSalesRep() {
		return salesRep;
	}
	public void setSalesRep(String salesRep) {
		this.salesRep = salesRep;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	



}
