package in.sp.util;

public class Queries {

	public static String select_all = "select * from users where username=? and password=?";
	public static String insert = "insert into users values (?,?,?)";
}
