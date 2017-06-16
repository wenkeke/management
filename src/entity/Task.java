package entity;

// default package

import java.util.Date;

/**
 * Task entity. @author MyEclipse Persistence Tools
 */

public class Task extends SplitPage implements java.io.Serializable {

	// Fields

	private Integer tid;
	private Employee employeeByUserid;
	private Employee employeeByCid;
	private String ttitle;
	private Date begindate;
	private Date enddate;
	private Date createdate;
	private Integer ischangestate;
	private String tcontext;
	private String tpath;
	private Integer isAgreeState; // 是否同意转移申请
	private Integer tstate; // 任务完成状态
	private String reason; // 原因

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public Integer getTid() {
		return tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public Employee getEmployeeByUserid() {
		return employeeByUserid;
	}

	public void setEmployeeByUserid(Employee employeeByUserid) {
		this.employeeByUserid = employeeByUserid;
	}

	public Employee getEmployeeByCid() {
		return employeeByCid;
	}

	public void setEmployeeByCid(Employee employeeByCid) {
		this.employeeByCid = employeeByCid;
	}

	public String getTtitle() {
		return ttitle;
	}

	public void setTtitle(String ttitle) {
		this.ttitle = ttitle;
	}

	public Date getBegindate() {
		return begindate;
	}

	public void setBegindate(Date begindate) {
		this.begindate = begindate;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	public Integer getIschangestate() {
		return ischangestate;
	}

	public void setIschangestate(Integer ischangestate) {
		this.ischangestate = ischangestate;
	}

	public String getTcontext() {
		return tcontext;
	}

	public void setTcontext(String tcontext) {
		this.tcontext = tcontext;
	}

	public String getTpath() {
		return tpath;
	}

	public void setTpath(String tpath) {
		this.tpath = tpath;
	}

	public Integer getIsAgreeState() {
		return isAgreeState;
	}

	public void setIsAgreeState(Integer isAgreeState) {
		this.isAgreeState = isAgreeState;
	}

	public Integer getTstate() {
		return tstate;
	}

	public void setTstate(Integer tstate) {
		this.tstate = tstate;
	}

}