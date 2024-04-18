package in.sp.dao;

public interface UserDAO {

	boolean isValidUser(String username, String password);

	boolean addUser(User user);
	
}
