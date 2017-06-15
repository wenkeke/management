package entity;
// default package

/**
 * Function entity. @author MyEclipse Persistence Tools
 */

public class Function implements java.io.Serializable {

	// Fields

	private Integer funid;
	private Role role;
	private String funtype;
	private String funtext;
	private String funurl;
	private String funtip;

	// Constructors

	/** default constructor */
	public Function() {
	}

	/** full constructor */
	public Function(Role role, String funtype, String funtext, String funurl,
			String funtip) {
		this.role = role;
		this.funtype = funtype;
		this.funtext = funtext;
		this.funurl = funurl;
		this.funtip = funtip;
	}

	// Property accessors

	public Integer getFunid() {
		return this.funid;
	}

	public void setFunid(Integer funid) {
		this.funid = funid;
	}

	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public String getFuntype() {
		return this.funtype;
	}

	public void setFuntype(String funtype) {
		this.funtype = funtype;
	}

	public String getFuntext() {
		return this.funtext;
	}

	public void setFuntext(String funtext) {
		this.funtext = funtext;
	}

	public String getFunurl() {
		return this.funurl;
	}

	public void setFunurl(String funurl) {
		this.funurl = funurl;
	}

	public String getFuntip() {
		return this.funtip;
	}

	public void setFuntip(String funtip) {
		this.funtip = funtip;
	}

}