package todoapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import todoapp.model.User;
import todoapp.utils.JDBCUtils;

public class UserDao implements IUserDao {

	private static final String SELECT_ALL_USers = "select * from users";

	@Override
	public int registerEmployee(User employee) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO users" + "  (first_name, last_name, username, password, email) VALUES "
				+ " (?, ?, ?, ?,?);";

		int result = 0;
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, employee.getFirstName());
			preparedStatement.setString(2, employee.getLastName());
			preparedStatement.setString(3, employee.getUsername());
			preparedStatement.setString(4, employee.getPassword());
			preparedStatement.setString(5, employee.getEmail());

			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			result = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return result;
	}

	@Override
	public List<User> GetAllUsers() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<User> userList = new ArrayList<>();

		// Step 1: Establishing a Connection
		try (Connection connection = JDBCUtils.getConnection();

				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USers);) {

			// Step 3: Execute the query or update query
			ResultSet resultSet = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (resultSet.next()) {
				String firstname = resultSet.getString("first_name");
				String lastname = resultSet.getString("last_name");
				String username = resultSet.getString("username");
				String email = resultSet.getString("email");
				boolean isAdmin = resultSet.getBoolean("isAdmin");

				userList.add(new User(firstname, lastname, username, email, isAdmin));
			}
		} catch (SQLException exception) {
			JDBCUtils.printSQLException(exception);
		}
		return userList;
	}

}
