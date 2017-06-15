package entity;

/**
 * 分页对应的实体类
 */
public class SplitPage {
	/**
	 * 总条数
	 */
	private Integer totalNumber = 1;
	/**
	 * 当前第几页
	 */
	private Integer currentPage = 1;
	/**
	 * 总页数
	 */
	private Integer totalPage;
	/**
	 * 每页显示条数
	 */
	private Integer pageNumber = 5;
	/**
	 * 数据库中oracle的参数，从第几条开始取
	 */
	private Integer dbIndex;
	/**
	 * 数据库中oracle的参数，读取到第几条
	 */
	private Integer dbToIndex;

	/**
	 * 根据当前对象中属性值计算并设置相关属性值
	 */
	public void count() {
		// 计算总页数
		Integer totalPageTemp = this.totalNumber / this.pageNumber;
		Integer plus = (this.totalNumber % this.pageNumber) == 0 ? 0 : 1;
		totalPageTemp = totalPageTemp + plus;
		if (totalPageTemp <= 0) {
			totalPageTemp = 1;
		}
		this.totalPage = totalPageTemp;

		// 设置当前页数
		// 总页数小于当前页数，应将当前页数设置为总页数
		if (this.totalPage < this.currentPage) {
			this.currentPage = this.totalPage;
		}
		// 当前页数小于1设置为1
		if (this.currentPage < 1) {
			this.currentPage = 1;
		}

		// 设置oracle的参数
		this.dbIndex = (this.currentPage - 1) * this.pageNumber;
		this.dbToIndex = this.currentPage * this.pageNumber;
	}

	public Integer getTotalNumber() {
		return totalNumber;
	}

	public void setTotalNumber(Integer totalNumber) {
		this.totalNumber = totalNumber;
		this.count();
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

	public Integer getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(Integer pageNumber) {
		this.pageNumber = pageNumber;
		this.count();
	}

	public Integer getDbIndex() {
		return dbIndex;
	}

	public void setDbIndex(Integer dbIndex) {
		this.dbIndex = dbIndex;
	}

	public Integer getDbToIndex() {
		return dbToIndex;
	}

	public void setDbToIndex(Integer dbToIndex) {
		this.dbToIndex = dbToIndex;
	}

}
