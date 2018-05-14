package wxl.logistic.bean;

import java.util.Date;

public class CampusManage {
    private Integer campusId;

    private String campusCategory;

    private String campusContent;

    private String campusHandle;

    private Date campusTime;

    public Integer getCampusId() {
        return campusId;
    }

    public void setCampusId(Integer campusId) {
        this.campusId = campusId;
    }

    public String getCampusCategory() {
        return campusCategory;
    }

    public void setCampusCategory(String campusCategory) {
        this.campusCategory = campusCategory == null ? null : campusCategory.trim();
    }

    public String getCampusContent() {
        return campusContent;
    }

    public void setCampusContent(String campusContent) {
        this.campusContent = campusContent == null ? null : campusContent.trim();
    }

    public String getCampusHandle() {
        return campusHandle;
    }

    public void setCampusHandle(String campusHandle) {
        this.campusHandle = campusHandle == null ? null : campusHandle.trim();
    }

    public Date getCampusTime() {
        return campusTime;
    }

    public void setCampusTime(Date campusTime) {
        this.campusTime = campusTime;
    }
}