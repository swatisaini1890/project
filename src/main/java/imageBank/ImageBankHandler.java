package imageBank;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.Project;

interface ImageBankStandard {
	void insert(ImageBank ib);

	List<ImageBank> fetchAllImagesInBank();

	String deleteById(int id);

}

public class ImageBankHandler implements ImageBankStandard {

	public void insert(ImageBank ib) {

		try {

			String query = "insert into imageBank (url) values (?)";

			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);

			p.setString(1, ib.getUrl());

			p.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public List<ImageBank> fetchAllImagesInBank() {
		List<ImageBank> list = new ArrayList<ImageBank>();
		try {

			String query = "select * from imageBank";

			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);

			ResultSet rs = p.executeQuery();

			while (rs.next()) {
				
				list.add(new ImageBank(rs.getInt("id"),
						rs.getString("url")));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public String deleteById(int id) {
	try {
		 String query="delete from imageBank where id=?";
		 
			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);

			
			p.setInt(1, id);
			p.executeUpdate();

	}
	catch(Exception e) {
		e.printStackTrace();
		return e.getMessage();
	}
	return "Image Bank Deletion Successful";
	
	}

}
