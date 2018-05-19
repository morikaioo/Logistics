package wxl.logistic.bean;

import java.util.Date;

public class User {
    private Integer userId;

    private String userName;

    private String password;

    private String phone;

    private String trivialName;

    private String sex;

    private String category;

    private String department;

    private Date registerTime;
    
    private Integer privilege;
    
    public void setPrivilege(Integer privilege) {
		this.privilege = privilege;
	}
    
    public Integer getPrivilege() {
		return privilege;
	}

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getTrivialName() {
        return trivialName;
    }

    public void setTrivialName(String trivialName) {
        this.trivialName = trivialName == null ? null : trivialName.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category == null ? null : category.trim();
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department == null ? null : department.trim();
    }

    public Date getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(Date registerTime) {
        this.registerTime = registerTime;
    }

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", password=" + password + ", phone=" + phone
				+ ", trivialName=" + trivialName + ", sex=" + sex + ", category=" + category + ", department="
				+ department + ", registerTime=" + registerTime + "]";
	}


	public User(Integer userId, String userName, String password, String phone, String trivialName, String sex,
			String category, String department, Date registerTime, Integer privilege) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.phone = phone;
		this.trivialName = trivialName;
		this.sex = sex;
		this.category = category;
		this.department = department;
		this.registerTime = registerTime;
		this.privilege = privilege;
	}

	public User() {
		super();
	}
    
}