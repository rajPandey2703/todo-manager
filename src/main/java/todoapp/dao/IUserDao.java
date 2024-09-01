package todoapp.dao;

import java.util.List;

import todoapp.model.User;

public interface IUserDao {

	int registerEmployee(User employee) throws ClassNotFoundException;

	List<User> GetAllUsers();

}
