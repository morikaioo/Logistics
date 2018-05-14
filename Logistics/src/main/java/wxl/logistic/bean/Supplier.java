package wxl.logistic.bean;

import java.util.Date;

public class Supplier {
private Integer supplierId;
    
    private String supplierName;
    
    private String Contact;

    private String Address;

    private String Email;

    private Date updateTime;
    
	public Integer getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(Integer supplierId) {
		this.supplierId = supplierId;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName == null ? null : supplierName.trim();
	}

	public String getContact() {
		return Contact;
	}

	public void setContact(String contact) {
		this.Contact = contact == null ? null : Contact.trim();
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		this.Address = address ==null ? null : address.trim();
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		this.Email = email == null ? null : email.trim();
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	
}
