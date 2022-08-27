package service;

import model.Product;

import java.util.List;

public interface IProductService {
    List<Product> showList();

    List<Product> searchByName(String name);

    Product findById(int id);

    void delete(int id);

    void update(int id ,Product product);

    void create(int id, Product product);
}
