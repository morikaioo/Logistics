package wxl.logistic.bean;

import java.util.Date;

public class Repairs {
    private Integer repairsId;

    private String repairsPerson;

    private String repairsContent;

    private String repairsCategory;

    private String repairsAddress;

    private Date repairsTime;

    private String repairsStatus;

    private Date handleTime;

    private String repairsHandle;

    public Integer getRepairsId() {
        return repairsId;
    }

    public void setRepairsId(Integer repairsId) {
        this.repairsId = repairsId;
    }

    public String getRepairsPerson() {
        return repairsPerson;
    }

    public void setRepairsPerson(String repairsPerson) {
        this.repairsPerson = repairsPerson == null ? null : repairsPerson.trim();
    }

    public String getRepairsContent() {
        return repairsContent;
    }

    public void setRepairsContent(String repairsContent) {
        this.repairsContent = repairsContent == null ? null : repairsContent.trim();
    }

    public String getRepairsCategory() {
        return repairsCategory;
    }

    public void setRepairsCategory(String repairsCategory) {
        this.repairsCategory = repairsCategory == null ? null : repairsCategory.trim();
    }

    public String getRepairsAddress() {
        return repairsAddress;
    }

    public void setRepairsAddress(String repairsAddress) {
        this.repairsAddress = repairsAddress == null ? null : repairsAddress.trim();
    }

    public Date getRepairsTime() {
        return repairsTime;
    }

    public void setRepairsTime(Date repairsTime) {
        this.repairsTime = repairsTime;
    }

    public String getRepairsStatus() {
        return repairsStatus;
    }

    public void setRepairsStatus(String repairsStatus) {
        this.repairsStatus = repairsStatus == null ? null : repairsStatus.trim();
    }

    public Date getHandleTime() {
        return handleTime;
    }

    public void setHandleTime(Date handleTime) {
        this.handleTime = handleTime;
    }

    public String getRepairsHandle() {
        return repairsHandle;
    }

    public void setRepairsHandle(String repairsHandle) {
        this.repairsHandle = repairsHandle == null ? null : repairsHandle.trim();
    }
}