package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepository implements IProductRepository {
    private static Map<Integer, Product> productMap;
    static {
        productMap = new HashMap<>();
        productMap.put(1, new Product(1, "Áo", 1000, "Áo POLO", "Viettien"));
        productMap.put(2, new Product(2, "Quần", 3000, "Quần Jeans", "Viettien"));
        productMap.put(3, new Product(3, "Giày", 500, "Giày bệt", "Viettien"));
        productMap.put(4, new Product(4, "Dép", 200, "Dép lào", "Viettien"));
        productMap.put(5, new Product(5, "Cặp sách", 300, "Cặp đeo chéo", "Viettien"));
        }
    @Override
    public List<Product> findByAll() {
        return new ArrayList<>(productMap.values()) ;
    }

    @Override
    public void add(Product product) {
       productMap.put(product.getId(), product);
    }

    @Override
    public void remove(int id) {
        productMap.remove(id);
    }

    @Override
    public void update(int id, Product product) {

    }
}
