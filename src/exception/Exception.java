package exception;

/**
 * 异常处理类
 * 
 * @author shinian
 * 
 */
public class Exception extends RuntimeException {

	/**
	 * 几种构造方法
	 */
	public Exception() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Exception(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public Exception(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public Exception(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}

}
