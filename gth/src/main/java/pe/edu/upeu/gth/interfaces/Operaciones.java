/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.interfaces;

import java.util.ArrayList;
import java.util.Map;


public interface Operaciones {

    public ArrayList<Map<String, Object>> listar();

    public boolean add(Object o);

    public boolean edit(Object o);

    public boolean delete(Object o);

}
