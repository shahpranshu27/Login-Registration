package in.sp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import in.sp.util.DBUtil;
import in.sp.util.Queries;

public class UserDAOImplement implements UserDAO {

	@Override
	public boolean isValidUser(String username, String password) {
//		String query = "select * from users where username=? and password=?";
		String query = Queries.select_all;
		try (Connection con = DBUtil.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
			ps.setString(1, username);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			
			System.out.println("query running!");
			return rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean addUser(User user) {
		String query = Queries.insert;
		try (Connection con = DBUtil.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			
			int rows = ps.executeUpdate();
			return rows>0;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
}
