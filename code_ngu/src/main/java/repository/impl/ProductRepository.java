package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.*;

public class ProductRepository implements IProductRepository {
    private static Map<Integer,Product> productMap = new HashMap<>();
    static {
        productMap.put(1,new Product(1,"Book", 1000,"Book about love", "Phuong Nam"));
        productMap.put(2,new Product(2,"Pen", 500,"Pen", "Phuong Nam"));
        productMap.put(3,new Product(3,"Book", 1000,"Book about love", "Phuong Nam"));
        productMap.put(4,new Product(4,"Book", 1000,"Book about love", "Phuong Nam"));
        productMap.put(5,new Product(5,"Book", 1000,"Book about love", "Phuong Nam"));
    }
    @Override
    public List<Product> showList() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public List<Product> searchByName(String name) {
        Set<Integer> listKey = productMap.keySet();
        List<Product> products = new ArrayList<>();
        for (Integer key:listKey ) {
            if(productMap.get(key).getName().toLowerCase().contains(name.toLowerCase())){
                products.add(productMap.get(key));
            }
        }
        return products;
    }

    @Override
    public Product findById(int id) {
        Set<Integer> keyList = productMap.keySet();
        for (Integer key:keyList) {
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

    @Override
    public void update(int id, Product product) {
         productMap.put(product.getId(), product);
    }

    @Override
    public void create(int id, Product product) {
        productMap.put(id,product);
    }



}
