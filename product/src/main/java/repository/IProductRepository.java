package repository;

import model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> findByAll();

    void add(Product product);

    void remove(int id);

    void update(int id, Product product);

}
