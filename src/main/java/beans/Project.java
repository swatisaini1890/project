package beans;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import category.Category;
import category.CategoryHandler;

@WebListener
public class Project implements ServletContextListener {

	public static final Connection conn = getConnection();

	private static Connection getConnection() {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("db Connected");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet", "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("db Connected falior");
		}

		return null;
	}

	public void contextDestroyed(ServletContextEvent sce) {
		try {
			conn.close();
			System.out.println("db Disconnected");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("db Disconnected failor");
		}
	}

	public void contextInitialized(ServletContextEvent sce) {

//		category c = new category("a", "a", (short) 23);
//		CategoryHandler ch = new CategoryHandler();
//		System.out.println(ch.update(c));

	}

}
