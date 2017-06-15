package entity;
import java.util.Date;

public class Notice implements java.io.Serializable {

	private Integer nid;
	private Employee employee;
	private String ntitle;
	private String ntype;
	private String ncontent;
	private Date ndate;
	private Integer state;

	public Notice() {
	}

	/** full constructor */
	public Notice(Employee employee, String ntitle, String ntype,
			String ncontent, Date ndate, Integer state) {
		this.employee = employee;
		this.ntitle = ntitle;
		this.ntype = ntype;
		this.ncontent = ncontent;
		this.ndate = ndate;
		this.state = state;
	}

	// Property accessors

	public Integer getNid() {
		return this.nid;
	}

	public void setNid(Integer nid) {
		this.nid = nid;
	}

	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public String getNtitle() {
		return this.ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNtype() {
		return this.ntype;
	}

	public void setNtype(String ntype) {
		this.ntype = ntype;
	}

	public String getNcontent() {
		return this.ncontent;
	}

	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}

	public Date getNdate() {
		return this.ndate;
	}

	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

}