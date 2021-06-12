package DBInfo;

public class DBInfo {
	String jdbcDriver = "jdbc:mysql://10.200.43.96/capcha?serverTimezone=UTC";
	String dbUser = "root";
	String dbPwd = "1234";
	public String jdbcDriver() {
		return jdbcDriver;
	}
	public String dbUser() {
		return dbUser;
	}
	public String dbPwd() {
		return dbPwd;
	}

}
