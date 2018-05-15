package wxl.logistic.bean;

import java.util.Date;

public class Material {
    private Integer materialId;
    
    private String materialNum;
    
    private String materialCategory;

    private String detailedStuff;

    private Integer materialNumber;

    private String materialStatus;

    private Date receiveTime;

    private Date updateTime;

    private String principal;

    public Integer getMaterialId() {
        return materialId;
    }

    public void setMaterialId(Integer materialId) {
        this.materialId = materialId;
    }

    public String getMaterialNum() {
		return materialNum;
	}

	public void setMaterialNum(String materialNum) {
		this.materialNum = materialNum == null ? null : materialNum.trim();
	}

	public String getMaterialCategory() {
        return materialCategory;
    }

    public void setMaterialCategory(String materialCategory) {
        this.materialCategory = materialCategory == null ? null : materialCategory.trim();
    }

    public String getDetailedStuff() {
        return detailedStuff;
    }

    public void setDetailedStuff(String detailedStuff) {
        this.detailedStuff = detailedStuff == null ? null : detailedStuff.trim();
    }

    public Integer getMaterialNumber() {
        return materialNumber;
    }

    public void setMaterialNumber(Integer materialNumber) {
        this.materialNumber = materialNumber;
    }

    public String getMaterialStatus() {
        return materialStatus;
    }

    public void setMaterialStatus(String materialStatus) {
        this.materialStatus = materialStatus == null ? null : materialStatus.trim();
    }

    public Date getReceiveTime() {
		return receiveTime;
	}

	public void setReceiveTime(Date receiveTime) {
		this.receiveTime = receiveTime;
	}

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getPrincipal() {
        return principal;
    }

    public void setPrincipal(String principal) {
        this.principal = principal == null ? null : principal.trim();
    }
}