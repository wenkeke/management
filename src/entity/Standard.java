package entity;
// default package


/**
 * Standard entity. @author MyEclipse Persistence Tools
 */

public class Standard implements java.io.Serializable {

	// Fields

	private Integer stanid;
	private String stanname;

	public Integer getStanid() {
		return stanid;
	}

	public void setStanid(Integer stanid) {
		this.stanid = stanid;
	}

	public String getStanname() {
		return stanname;
	}

	public void setStanname(String stanname) {
		this.stanname = stanname;
	}

}