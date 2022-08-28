package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.lang.reflect.Array;
import java.util.*;

public class ProductRepository implements IProductRepository {
    private static Map<Integer, Product> productMap = new HashMap<>();
    static {
        productMap.put(1, new Product(1,"ao",1000));
        productMap.put(2, new Product(2,"quan",1000));
        productMap.put(3, new Product(3,"giay",1000));
        productMap.put(4, new Product(4,"dep",1000));
    }

    @Override
    public List<Product> displayAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public Product findById(int id) {
        Set<Integer> keySet = productMap.keySet();
        for (Integer key : keySet) {
            if(productMap.get(key).getId() == id){
                return productMap.get(key);
            }
        }
        return null;
    }

    @Override
    public void delete(int id) {
        productMap.remove(id);
    }
}
