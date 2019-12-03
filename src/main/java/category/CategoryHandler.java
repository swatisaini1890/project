package category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.Project;

interface CategoryStandard {

	String insert(Category c);

	String update(Category c);

	boolean deleteById(short id);

	Category fetchCategory(short id);

	List<Category> fetchAllCategories();
}

public class CategoryHandler implements CategoryStandard {

	public String insert(Category c) {

		try {
			String query = "insert into abc" + "(name,description)  values (?,?)";

			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);

			p.setString(1, c.getName());
			p.setString(2, c.getDescription());

			p.executeUpdate();

		} catch (Exception e) {
			return e.getMessage();
		}
		return "inserted Successfully";
	}

	public String update(Category c) {

		try {
			String query = "update abc set name = ? , description = ? where id = ?";
			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);

			p.setString(1, c.getName());
			p.setString(2, c.getDescription());
			p.setShort(3, c.getId());

			p.executeUpdate();

		} catch (Exception e) {
			return e.getMessage();
		}
		return " abc updated Successfully";

	}

	public List<Category> fetchAllCategories() {
		List<Category> list = new ArrayList<Category>();
		try {
			String query = "select * from abc";

			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);

			ResultSet rs = p.executeQuery();

			while (rs.next()) {

				list.add(new Category(rs.getString("name"), rs.getString("description"), rs.getShort("id")

				));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean deleteById(short id) {

		try {

			String query = "delete from abc where id =?";
			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);

			p.setShort(1, id);
			p.executeUpdate();

			return true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public Category fetchCategory(short id) {
		try {
			String query = "select * from abc where id =?";
			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);

			p.setShort(1, id);

			ResultSet rs = p.executeQuery();
			while (rs.next()) {
				return new Category(rs.getString("name"), rs.getString("description"), rs.getShort("id"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return new Category();

	}

}