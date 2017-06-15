package interceptor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import org.apache.ibatis.executor.parameter.ParameterHandler;
import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.reflection.SystemMetaObject;

import entity.Employee;

/*
 * 分页拦截器
 */
@Intercepts(value = { @Signature(type = StatementHandler.class, method = "prepare", args = { Connection.class }) })
public class PageInterceptor implements Interceptor {

	/*
	 * 拦截对象
	 * 
	 * @see
	 * org.apache.ibatis.plugin.Interceptor#intercept(org.apache.ibatis.plugin
	 * .Invocation)
	 */
	@Override
	public Object intercept(Invocation invocation) throws Throwable {
		StatementHandler statementHandler = (StatementHandler) invocation
				.getTarget();
		MetaObject metaObject = MetaObject.forObject(statementHandler,
				SystemMetaObject.DEFAULT_OBJECT_FACTORY,
				SystemMetaObject.DEFAULT_OBJECT_WRAPPER_FACTORY);
		MappedStatement mappedStatement = (MappedStatement) metaObject
				.getValue("parameterHandler.mappedStatement");
		// mapper文件里的sql语句id
		String id = mappedStatement.getId();
		// java 正则表达式：
		// Pattern pattern = Pattern.compile("[0-9]{1,9}");
		// boolean flag = pattern.matcher("a").matches();
		if (id.matches(".+ByPage$")) {
			BoundSql boundSql = statementHandler.getBoundSql();
			// 原始的SQL语句
			String sql = boundSql.getSql();
			// 查询总条数的SQL语句
			String countSql = "select count(*) from (" + sql + ")a";
			Connection connection = (Connection) invocation.getArgs()[0];
			PreparedStatement countStatement = connection
					.prepareStatement(countSql);
			ParameterHandler parameterHandler = (ParameterHandler) metaObject
					.getValue("parameterHandler");
			parameterHandler.setParameters(countStatement);
			ResultSet rs = countStatement.executeQuery();
			// 硬转
			// 映射文件的resulttype类型
			Employee page = (Employee) boundSql.getParameterObject();
			// SplitPage page = (SplitPage) boundSql.getParameterObject();
			// /SplitPage page = (SplitPage) parameter.getClass();
			if (rs.next()) {
				page.setTotalNumber(rs.getInt(1));
			}
			// 改造后带分页查询的SQL语句
			// String pageSql = sql + " limit " + page.getDbIndex() + ","
			// + page.getDbToIndex();
			String pageSql = "select * from (select a.*,rownum r from ( " + sql
					+ " )a ) where r >= " + page.getDbIndex() + " and  r <= "
					+ page.getDbToIndex();
			metaObject.setValue("boundSql.sql", pageSql);
		}
		return invocation.proceed();
	}

	/*
	 * 
	 * (non-Javadoc)
	 * 
	 * @see org.apache.ibatis.plugin.Interceptor#plugin(java.lang.Object)
	 */
	@Override
	public Object plugin(Object target) {
		return Plugin.wrap(target, this);
	}

	@Override
	public void setProperties(Properties properties) {
		// TODO Auto-generated method stub

	}

}
