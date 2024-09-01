package todoapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import todoapp.model.LoginBean;
import todoapp.utils.JDBCUtils;

public class LoginDao {

	public LoginBean validate(LoginBean loginBean) throws ClassNotFoundException {
		boolean status = false;
		LoginBean login = new LoginBean();
		Class.forName("com.mysql.jdbc.Driver");

		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection
						.prepareStatement("select * from users where username = ? and password = ? ")) {
			preparedStatement.setString(1, loginBean.getUsername());
			preparedStatement.setString(2, loginBean.getPassword());
			preparedStatement.setMaxRows(1);
			ResultSet rs = preparedStatement.executeQuery();
			status = rs.next();
			login.setIsAdmin(rs.getBoolean("isAdmin"));

		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return login;
	}
}
