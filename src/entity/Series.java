package entity;
// default package


/**
 * Series entity. @author MyEclipse Persistence Tools
 */

public class Series implements java.io.Serializable {

	// Fields

	private Integer serid;
	private String sername;

	public Integer getSerid() {
		return serid;
	}

	public void setSerid(Integer serid) {
		this.serid = serid;
	}

	public String getSername() {
		return sername;
	}

	public void setSername(String sername) {
		this.sername = sername;
	}

}