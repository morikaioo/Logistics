package wxl.logistic.bean;

import java.util.Date;

public class Buyer {
    private Integer buyerId;
    
    private String supplierName;
    
    private String foodName;

    private String foodCategory;

    private Float price;

    private Float foodNumber;

    private Date buyDate;

    private String buyName;
 
    private Float Sum;
    
    private Float JiSuan;
    
    private Integer settleStatus;
    
    public Integer getSettleStatus() {
		return settleStatus;
	}
    
    public void setSettleStatus(Integer settleStatus) {
		this.settleStatus = settleStatus;
	}
    
    public Integer getBuyerId() {
        return buyerId;
    }

    public void setBuyerId(Integer buyerId) {
        this.buyerId = buyerId;
    }

    public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName == null ? null : supplierName.trim();
	}

	public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName == null ? null : foodName.trim();
    }

    public String getFoodCategory() {
        return foodCategory;
    }

    public void setFoodCategory(String foodCategory) {
        this.foodCategory = foodCategory == null ? null : foodCategory.trim();
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Float getFoodNumber() {
        return foodNumber;
    }

    public void setFoodNumber(Float foodNumber) {
        this.foodNumber = foodNumber;
    }

    public Date getBuyDate() {
        return buyDate;
    }

    public void setBuyDate(Date buyDate) {
        this.buyDate = buyDate;
    }

    public String getBuyName() {
        return buyName;
    }

    public void setBuyName(String buyName) {
        this.buyName = buyName == null ? null : buyName.trim();
    }

	public Float getSum() {
		return Sum;
	}

	public void setSum(Float sum) {
		Sum = sum;
	}

	public Float getJiSuan() {
		return JiSuan;
	}

	public void setJiSuan(Float jiSuan) {
		this.JiSuan = jiSuan;
	}
	
}