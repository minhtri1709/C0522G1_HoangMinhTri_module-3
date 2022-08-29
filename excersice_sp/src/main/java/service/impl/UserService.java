package service.impl;

import model.User;
import repository.IUserRepository;
import repository.impl.UserRepository;
import service.IUserService;

import java.util.List;

public class UserService implements IUserService {

    private IUserRepository iUserRepository=new UserRepository();

    @Override
    public List<User> findByAll() {
        return iUserRepository.findByAll();
    }

    @Override
    public boolean add(User user) {
        return iUserRepository.add(user);
    }

    @Override
    public boolean delete(int id) {
        return iUserRepository.delete(id);
    }

    @Override
    public boolean update(User user) {
        return iUserRepository.update(user);
    }

    @Override
    public User selectById(int id) {
        return iUserRepository.selectById(id);
    }

    @Override
    public List<User> searchCountry(String seach) {
        return iUserRepository.searchCountry(seach);
    }

    @Override
    public void addUserTransaction(User user) {
        iUserRepository.addUserTransaction(user);
    }

}
