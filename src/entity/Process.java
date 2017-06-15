package entity;
// default package

/**
 * Process entity. @author MyEclipse Persistence Tools
 */

public class Process implements java.io.Serializable {

	// Fields

	private Integer proconid;
	private Project project;
	private String proconname;
	private Integer processid;
	private String processname;

	// Constructors

	/** default constructor */
	public Process() {
	}

	/** full constructor */
	public Process(Project project, String proconname, Integer processid,
			String processname) {
		this.project = project;
		this.proconname = proconname;
		this.processid = processid;
		this.processname = processname;
	}

	// Property accessors

	public Integer getProconid() {
		return this.proconid;
	}

	public void setProconid(Integer proconid) {
		this.proconid = proconid;
	}

	public Project getProject() {
		return this.project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public String getProconname() {
		return this.proconname;
	}

	public void setProconname(String proconname) {
		this.proconname = proconname;
	}

	public Integer getProcessid() {
		return this.processid;
	}

	public void setProcessid(Integer processid) {
		this.processid = processid;
	}

	public String getProcessname() {
		return this.processname;
	}

	public void setProcessname(String processname) {
		this.processname = processname;
	}

}