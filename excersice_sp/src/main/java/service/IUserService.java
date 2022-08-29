package service;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserService {
    List<User> findByAll();

    boolean add(User user);

    boolean delete(int id);

    boolean update(User user);

    User selectById(int id);

    List<User> searchCountry(String seach);

    void addUserTransaction(User user);
}
