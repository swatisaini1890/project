package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.PerConnectionLRUFactory;

import beans.Project;
import category.Category;

interface ProductStandard {
	String insert(Product pr);

	String update(Product pr);

	boolean deleteById(int id);

	Product fetchProduct(int id);

	List<Product> fetchAllProducts();

}

public class ProductHandler implements ProductStandard {

	public String insert(Product pr) {

		try {
			String query = "insert into product" + "(name,description,categoryid,price,stockqty,imageId) "
					+ "values (?,?,?,?,?,?)";

			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);
			p.setString(1, pr.getName());
			p.setString(2, pr.getDescription());
			p.setShort(3, pr.getCategoryId());
			p.setFloat(4, pr.getPrice());
			p.setShort(5, pr.getStockqty());
			p.setInt(6, pr.getImageId());

			p.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			return e.getMessage();
		}

		return " product insert successfully";
	}

	public boolean deleteById(int id) {

		try {

			String query = "delete from product where id =?";
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

	public List<Product> fetchAllProducts() {
		List<Product> list = new ArrayList<Product>();

		try {

			String query = "select p.*,c.name as catName,c.description as catDesc ,"
					+ "ib.url as imageUrl from product p,abc c ,imageBank ib where "
					+ "c.id=p.categoryid and ib.id=p.imageId";
			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);

			ResultSet rs = p.executeQuery();
			while (rs.next()) {
				list.add(
						new Product(
								rs.getInt("id"),
								rs.getString("name"),
								rs.getString("description"),
								rs.getShort("categoryid"), 
								rs.getFloat("price"), 
								rs.getShort("stockqty"),
								new Category(rs.getString("catName"), 
										rs.getString("catDesc")),
								rs.getString("imageUrl")));
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return list;
	}

	public String update(Product pr) {
		try {
			String query = "update product set name = ? ,description = ?,"
					+ " price=?, stockqty=?, categoryid=?  where id = ? ";
			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);

			p.setString(1, pr.getName());
			p.setString(2, pr.getDescription());
			p.setShort(5,pr.getCategoryId());
			p.setFloat(3, pr.getPrice());
			p.setShort(4, pr.getStockqty());
			p.setInt(6, pr.getId());

			p.executeUpdate();

		} catch (Exception e) {
			return e.getMessage();
		}
		return " product updated Successfully";

	}

	public Product fetchProduct(int id) {
		try {
			String query = "select p.*,c.name as catName,c.description as catDesc , ib.url as imageUrl from product p,abc c ,imageBank ib where  c.id=p.categoryid and ib.id=p.imageId and p.id=?";
			
			Connection conn = Project.conn;
			PreparedStatement p = conn.prepareStatement(query);

			p.setInt(1, id);

			ResultSet rs = p.executeQuery();
			while (rs.next()){
				Product product= new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setDescription(rs.getString("description"));
				product.setPrice(rs.getFloat("price"));
				product.setStockqty(rs.getShort("stockqty"));
				product.setCategoryId(rs.getShort("categoryId"));

				Category c = new Category();
				c.setName(rs.getString("catName"));
				c.setDescription(rs.getString("catDesc"));
				product.setCategory(c);
				// rs.getShort("categoryId"),
				product.setImageUrl(rs.getString("imageUrl"));

				return product;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new Product();

	}
}
