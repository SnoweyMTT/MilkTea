/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tea;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author SnoweyMTT
 */
public class Cart {

    private Map<String, Tea> cart;

    public Cart() {
    }

    public Cart(Map<String, Tea> cart) {
        this.cart = cart;
    }

    public Map<String, Tea> getCart() {
        return cart;
    }

    public void setCart(Map<String, Tea> cart) {
        this.cart = cart;
    }

    public boolean add(Tea tea) {
        boolean check = false;
        if (this.cart == null) {
            this.cart = new HashMap<>();
        }
        if (this.cart.containsKey(tea.getId())) {
            int currentQuantity = this.cart.get(tea.getId()).getQuantity();
            tea.setQuantity(currentQuantity + tea.getQuantity());
        }
        this.cart.put(tea.getId(), tea);
        check = true;
        return check;
    }

    public boolean delete(String id) {
        boolean check = false;
        if (this.cart != null) {
            if (this.cart.containsKey(id)) {
                this.cart.remove(id);
                check = true;
            }
        }
        return check;
    }

    public boolean update(String id, Tea tea) {
        boolean check = false;
        if (this.cart != null) {
            if (this.cart.containsKey(id)) {
                this.cart.replace(id, tea);
                check = true;
            }
        }
        return check;
    }
}
