/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Product;
import Model.Purchase;
import Model.Sale;

/**
 *
 * @author JClaude
 */
public class main {
    public static void main(String[] args) {
        GenericDao<Sale> dao = new GenericDao<Sale>(Sale.class);
        System.out.println(dao.findAll().toString());
    }
}
