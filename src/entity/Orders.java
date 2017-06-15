package entity;
// default package

import java.util.Date;

/**
 * Orders entity. @author MyEclipse Persistence Tools
 */

public class Orders implements java.io.Serializable {

	// Fields

	private Integer orderid;
	private Employee employeeByDeptid;
	private Employee employeeBySalesid;
	private Project project;
	private Product product;
	private Custom custom;
	private String ordername;
	private Integer ordernum;
	private String remark;
	private Date oderdate;
	private String contract;
	private String customdata;
	private Integer dispatchingid;

	// Constructors

	/** default constructor */
	public Orders() {
	}

	/** minimal constructor */
	public Orders(Employee employeeByDeptid, Employee employeeBySalesid,
			Project project, Product product, Custom custom, String ordername,
			Integer ordernum, Date oderdate, String contract,
			String customdata, Integer dispatchingid) {
		this.employeeByDeptid = employeeByDeptid;
		this.employeeBySalesid = employeeBySalesid;
		this.project = project;
		this.product = product;
		this.custom = custom;
		this.ordername = ordername;
		this.ordernum = ordernum;
		this.oderdate = oderdate;
		this.contract = contract;
		this.customdata = customdata;
		this.dispatchingid = dispatchingid;
	}

	/** full constructor */
	public Orders(Employee employeeByDeptid, Employee employeeBySalesid,
			Project project, Product product, Custom custom, String ordername,
			Integer ordernum, String remark, Date oderdate, String contract,
			String customdata, Integer dispatchingid) {
		this.employeeByDeptid = employeeByDeptid;
		this.employeeBySalesid = employeeBySalesid;
		this.project = project;
		this.product = product;
		this.custom = custom;
		this.ordername = ordername;
		this.ordernum = ordernum;
		this.remark = remark;
		this.oderdate = oderdate;
		this.contract = contract;
		this.customdata = customdata;
		this.dispatchingid = dispatchingid;
	}

	// Property accessors

	public Integer getOrderid() {
		return this.orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	public Employee getEmployeeByDeptid() {
		return this.employeeByDeptid;
	}

	public void setEmployeeByDeptid(Employee employeeByDeptid) {
		this.employeeByDeptid = employeeByDeptid;
	}

	public Employee getEmployeeBySalesid() {
		return this.employeeBySalesid;
	}

	public void setEmployeeBySalesid(Employee employeeBySalesid) {
		this.employeeBySalesid = employeeBySalesid;
	}

	public Project getProject() {
		return this.project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Custom getCustom() {
		return this.custom;
	}

	public void setCustom(Custom custom) {
		this.custom = custom;
	}

	public String getOrdername() {
		return this.ordername;
	}

	public void setOrdername(String ordername) {
		this.ordername = ordername;
	}

	public Integer getOrdernum() {
		return this.ordernum;
	}

	public void setOrdernum(Integer ordernum) {
		this.ordernum = ordernum;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Date getOderdate() {
		return this.oderdate;
	}

	public void setOderdate(Date oderdate) {
		this.oderdate = oderdate;
	}

	public String getContract() {
		return this.contract;
	}

	public void setContract(String contract) {
		this.contract = contract;
	}

	public String getCustomdata() {
		return this.customdata;
	}

	public void setCustomdata(String customdata) {
		this.customdata = customdata;
	}

	public Integer getDispatchingid() {
		return this.dispatchingid;
	}

	public void setDispatchingid(Integer dispatchingid) {
		this.dispatchingid = dispatchingid;
	}

}