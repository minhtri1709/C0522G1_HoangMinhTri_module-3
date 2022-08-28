package service;

import model.Product;

import java.util.List;

public interface IProductService {
    List<Product> displayAll();

    Product findById(int id);

    void delete(int id);
}
