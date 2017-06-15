package entity;
public class Custom implements java.io.Serializable {

	private Integer cid;
	private String came;
	private Integer ctype;
	private String conteactname;
	private String conteactphone;

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getCame() {
		return came;
	}

	public void setCame(String came) {
		this.came = came;
	}

	public Integer getCtype() {
		return ctype;
	}

	public void setCtype(Integer ctype) {
		this.ctype = ctype;
	}

	public String getConteactname() {
		return conteactname;
	}

	public void setConteactname(String conteactname) {
		this.conteactname = conteactname;
	}

	public String getConteactphone() {
		return conteactphone;
	}

	public void setConteactphone(String conteactphone) {
		this.conteactphone = conteactphone;
	}

}