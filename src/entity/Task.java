package entity;
// default package

import java.util.Date;

/**
 * Task entity. @author MyEclipse Persistence Tools
 */

public class Task implements java.io.Serializable {

	// Fields

	private Integer tid;
	private Employee employeeByUserid;
	private Employee employeeByCid;
	private String ttitle;
	private Date begindate;
	private Date enddate;
	private Date createdate;
	private Integer importantstate;
	private String tcontext;
	private String tpath;
	private Integer auditingstate;
	private Integer tstate;

	// Constructors

	/** default constructor */
	public Task() {
	}

	/** minimal constructor */
	public Task(Employee employeeByUserid, String ttitle, Date begindate,
			Date enddate, Date createdate, Integer importantstate,
			String tcontext, String tpath, Integer auditingstate, Integer tstate) {
		this.employeeByUserid = employeeByUserid;
		this.ttitle = ttitle;
		this.begindate = begindate;
		this.enddate = enddate;
		this.createdate = createdate;
		this.importantstate = importantstate;
		this.tcontext = tcontext;
		this.tpath = tpath;
		this.auditingstate = auditingstate;
		this.tstate = tstate;
	}

	/** full constructor */
	public Task(Employee employeeByUserid, Employee employeeByCid,
			String ttitle, Date begindate, Date enddate, Date createdate,
			Integer importantstate, String tcontext, String tpath,
			Integer auditingstate, Integer tstate) {
		this.employeeByUserid = employeeByUserid;
		this.employeeByCid = employeeByCid;
		this.ttitle = ttitle;
		this.begindate = begindate;
		this.enddate = enddate;
		this.createdate = createdate;
		this.importantstate = importantstate;
		this.tcontext = tcontext;
		this.tpath = tpath;
		this.auditingstate = auditingstate;
		this.tstate = tstate;
	}

	// Property accessors

	public Integer getTid() {
		return this.tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public Employee getEmployeeByUserid() {
		return this.employeeByUserid;
	}

	public void setEmployeeByUserid(Employee employeeByUserid) {
		this.employeeByUserid = employeeByUserid;
	}

	public Employee getEmployeeByCid() {
		return this.employeeByCid;
	}

	public void setEmployeeByCid(Employee employeeByCid) {
		this.employeeByCid = employeeByCid;
	}

	public String getTtitle() {
		return this.ttitle;
	}

	public void setTtitle(String ttitle) {
		this.ttitle = ttitle;
	}

	public Date getBegindate() {
		return this.begindate;
	}

	public void setBegindate(Date begindate) {
		this.begindate = begindate;
	}

	public Date getEnddate() {
		return this.enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	public Date getCreatedate() {
		return this.createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	public Integer getImportantstate() {
		return this.importantstate;
	}

	public void setImportantstate(Integer importantstate) {
		this.importantstate = importantstate;
	}

	public String getTcontext() {
		return this.tcontext;
	}

	public void setTcontext(String tcontext) {
		this.tcontext = tcontext;
	}

	public String getTpath() {
		return this.tpath;
	}

	public void setTpath(String tpath) {
		this.tpath = tpath;
	}

	public Integer getAuditingstate() {
		return this.auditingstate;
	}

	public void setAuditingstate(Integer auditingstate) {
		this.auditingstate = auditingstate;
	}

	public Integer getTstate() {
		return this.tstate;
	}

	public void setTstate(Integer tstate) {
		this.tstate = tstate;
	}

}