package service;

import model.User;

import java.util.List;

public interface IUserService {
    List<User> displayAll();

    public User selectUser(int id);

    boolean add(User user);

    boolean edit(User user);

    boolean delete(int id);

    List<User> sortByNameASC();

    List<User> sortByNameDESC();

    List<User> searchByCountry(String name);
}
