package entity;

/**
 * 员工实体类
 */
import java.util.Date;

public class Employee extends SplitPage implements java.io.Serializable {

	/*
	 * 属性字段
	 */
	private Integer empno;
	private Position position;
	private Dept dept;
	private String ename;
	private String gender;
	private Date birthdate;
	private Date entrydate;
	private String nation;
	private String nativeplace;
	private String eduback;
	private String specialty;
	private String school;
	private String address;
	private Double sal;
	private String email;
	private String idnumber;
	private String telephone;
	private String bank;
	private String bio;
	private Integer state;
	private String remark;

	/**
	 * 关系表字段
	 */
	private String dname;
	private String pname;

	/**
	 * 三个时间
	 */
	private String birdate;
	private String formdate;
	private String Stringentrydate;

	public String getBirdate() {
		return birdate;
	}

	public void setBirdate(String birdate) {
		this.birdate = birdate;
	}

	public String getFormdate() {
		return formdate;
	}

	public void setFormdate(String formdate) {
		this.formdate = formdate;
	}

	public String getStringentrydate() {
		return Stringentrydate;
	}

	public void setStringentrydate(String stringentrydate) {
		Stringentrydate = stringentrydate;
	}

	/**
	 * 搜索条件字段
	 */
	// 工号、姓名、职位、手机
	private String searchfull; // 全字段
	private String searchsex; // 性别
	private String searchdno; // 部门编号
	private Integer searchstate; // 是否离职
	private String searchstarttime; // 入职时间 开始
	private String searchendtime; // 入职时间结束
	private Date starttime;
	private Date endtime;
	private Integer searchnumber;
	private String searchstring;

	/*
	 * 以下为属性封装的getter和setter方法
	 */

	public Date getStarttime() {
		return starttime;
	}

	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}

	public Date getEndtime() {
		return endtime;
	}

	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	public Integer getSearchnumber() {
		return searchnumber;
	}

	public void setSearchnumber(Integer searchnumber) {
		this.searchnumber = searchnumber;
	}

	public String getSearchstring() {
		return searchstring;
	}

	public void setSearchstring(String searchstring) {
		this.searchstring = searchstring;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Integer getEmpno() {
		return empno;
	}

	public void setEmpno(Integer empno) {
		this.empno = empno;
	}

	public Position getPosition() {
		return position;
	}

	public void setPosition(Position position) {
		this.position = position;
	}

	public Dept getDept() {
		return dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

	public Date getEntrydate() {
		return entrydate;
	}

	public void setEntrydate(Date entrydate) {
		this.entrydate = entrydate;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getNativeplace() {
		return nativeplace;
	}

	public void setNativeplace(String nativeplace) {
		this.nativeplace = nativeplace;
	}

	public String getEduback() {
		return eduback;
	}

	public void setEduback(String eduback) {
		this.eduback = eduback;
	}

	public String getSpecialty() {
		return specialty;
	}

	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Double getSal() {
		return sal;
	}

	public void setSal(Double sal) {
		this.sal = sal;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIdnumber() {
		return idnumber;
	}

	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getSearchfull() {
		return searchfull;
	}

	public void setSearchfull(String searchfull) {
		this.searchfull = searchfull;
	}

	public String getSearchsex() {
		return searchsex;
	}

	public void setSearchsex(String searchsex) {
		this.searchsex = searchsex;
	}

	public String getSearchdno() {
		return searchdno;
	}

	public void setSearchdno(String searchdno) {
		this.searchdno = searchdno;
	}

	public Integer getSearchstate() {
		return searchstate;
	}

	public void setSearchstate(Integer searchstate) {
		this.searchstate = searchstate;
	}

	public String getSearchstarttime() {
		return searchstarttime;
	}

	public void setSearchstarttime(String searchstarttime) {
		this.searchstarttime = searchstarttime;
	}

	public String getSearchendtime() {
		return searchendtime;
	}

	public void setSearchendtime(String searchendtime) {
		this.searchendtime = searchendtime;
	}

}