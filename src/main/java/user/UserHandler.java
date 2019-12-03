package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.Project;
import category.Category;

interface UserStandard{
	String insert(User ur);

	User checkLogin( String email,String password);
	
	boolean deleteById(int id);


	List<User>FetchAllUsers();
	
	String toggleActive(int id,boolean state);
}
public class UserHandler implements UserStandard{

	public String insert(User ur) {
	
			try 
			{
				String query="insert into user"
						+ " (name,phone,email,password) "
						+ "values(?,?,?,?)";
				

				Connection conn = Project.conn;
				PreparedStatement p = conn.prepareStatement(query);
				p.setString(1, ur.getName());
				p.setString(2, ur.getPhone());
				p.setString(3, ur.getEmail());
				p.setString(4, ur.getPassword());
				
				
				p.executeUpdate();

			}
			catch (Exception e)
			{
			return e.getMessage();
			}
		
		
		return "user inserted successfully";
	}

	public List<User> FetchAllUsers() {
		List<User> list= new ArrayList<User>();
		
		try 
		{
			String query="select * from user";
			

			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);
			ResultSet rs= p.executeQuery();
			while(rs.next()) {
				list.add(new User(
						rs.getInt("id"),
						rs.getString("name"),
						rs.getString("phone"),
						rs.getString("email"),
						rs.getString("password"),
						rs.getInt("active")));
				
			}

		}
		catch (Exception e)
		{
				e.printStackTrace();
		}
		
		return list;
	}

	

	public boolean deleteById(int id) {
		try {

			String query = "delete from user where id =?";
			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);

			p.setInt(1, id);
			p.executeUpdate();

			return true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		
		return false;
	}



	public User fetchUser(int id) {
		
		try {
			String query = "select * from user where id =?";
			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);

			p.setInt(1, id);

			ResultSet rs = p.executeQuery();
			while (rs.next()) {
				return new User(
						rs.getInt("id"),
						rs.getString("name"),
						rs.getString("phone"),
						rs.getString("email"),
						rs.getString("password"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return new User();

	}

	public String toggleActive(int id, boolean state) {
		
		
		try {
			String query = "update user set active=? where id =?";
			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);

			p.setInt(1, state?1:0);
			p.setInt(2, id);
			
			p.executeUpdate();

		}
		catch (Exception e) {
		e.printStackTrace();
		return e.getMessage();
		}
		
		return "success";
	}



	public User checkLogin(String userEmail, String userPassword) {
		
		try {
			String query="select * from user where email=? and password =? ";

			

			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);
			p.setString(1,userEmail);
			p.setString(2 ,userPassword);
			

			ResultSet rs = p.executeQuery();
			while(rs.next()) { 
				User ur = new User();
				ur.setEmail(rs.getString("email"));
				ur.setRole(rs.getString("role"));
				ur.setId(rs.getInt("id"));
				ur.setName(rs.getString("name"));
				
				return ur;
			}
			
		}catch (Exception e) {
		
		e.printStackTrace();
		}



		return null;
	}
	
	


	

	

	
}
