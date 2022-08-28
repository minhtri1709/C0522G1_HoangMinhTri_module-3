package service.impl;

import model.User;
import repository.IUserRepository;
import repository.impl.UserRepository;
import service.IUserService;

import java.util.List;

public class UserService implements IUserService {
    IUserRepository userRepository = new UserRepository();

    @Override
    public List<User> displayAll() {
        return userRepository.displayAll();
    }

    @Override
    public User selectUser(int id) {
        return userRepository.selectUser(id);
    }

    @Override
    public boolean add(User user) {
        return userRepository.add(user);
    }

    @Override
    public boolean edit(User user) {
        return userRepository.edit(user);
    }

    @Override
    public boolean delete(int id) {
        return userRepository.delete(id);
    }

    @Override
    public List<User> sortByNameASC() {
        return userRepository.sortByNameASC();
    }

    @Override
    public List<User> sortByNameDESC() {
        return userRepository.sortByNameDESC();
    }


    @Override
    public List<User> searchByCountry(String country) {
        return userRepository.searchByCountry(country);
    }
}
