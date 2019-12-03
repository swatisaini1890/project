package address;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.Project;

interface AddressStandard {
	String insert(Address a);

	List<Address> fetchAddress(int userid);
}

public class AddressHandler implements AddressStandard {

	public String insert(Address a) {
		try {
			String query = "insert into address(name,phone,pincode,locality,address,city,"
					+ "state,landmark,alternate_phone,address_type,userid)values" + "(?,?,?,?,?,?,?,?,?,?,?)";

			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);
			p.setString(1, a.getName());
			p.setString(2, a.getPhone());
			p.setInt(3, a.getPincode());
			p.setString(4, a.getLocality());
			p.setString(5, a.getAddress());
			p.setString(6, a.getCity());
			p.setString(7, a.getState());
			p.setString(8, a.getLandmark());
			p.setString(9, a.getAlternate_phone());
			p.setString(10, a.getAddress_type());
			p.setInt(11, a.getUserid());

			p.executeUpdate();
			System.out.println(p);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	public List<Address> fetchAddress(int userid) {
		List<Address> list = new ArrayList<Address>();
		try {


			String query = "select * from address where id=?";
			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);
			
			
			p.setInt(1, userid);
			ResultSet rs= p.executeQuery();
			
			while(rs.next()) {
				list.add(
						new Address(
								rs.getInt("id"),
								rs.getString("name"),
								rs.getString("phone"),
								rs.getInt("pincode"),
								rs.getString("locality"),
								rs.getString("address"),
								rs.getString("city"),
								rs.getString("state"),
								rs.getString("landmark"),
								rs.getString("alternate_phone"),
								rs.getString("address_type"),
								rs.getInt("userid")
				
								));
				
			}
		
		
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

}
