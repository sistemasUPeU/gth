/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.test;

import java.util.HashMap;
import java.util.Map;
import javax.sql.DataSource;
import pe.edu.upeu.gth.config.AppConfig;
import pe.edu.upeu.gth.dao.ejemploDAO;

/**
 *
 * @author Alfa003
 */
public class testeo {

    /**
     * @param args the command line arguments
     */
    public static     DataSource d = AppConfig.getDataSource();

    public static ejemploDAO eA = new ejemploDAO(d);
    public static Map<String, Object> mp = new HashMap<>();

    public static void main(String[] args) {
        //conect();
        //listar_puestos();
        //addPuesto("Esclavo", "es", "1", "SEC-0003", "3");
        //updatePuesto("1");
//        deletePuesto("PUT-002012");
        listar_puestos();
    }
    //--
    public static void listar_puestosejemplo() {
        System.out.println(eA.listajt());
    }
    ///

    public static void conect() {
        DataSource d = AppConfig.getDataSource();

        if (d != null) {
            System.out.println("SI");
        } else {
            System.out.println("no");
        }
    }

    public static void listar_puestos() {
        System.out.println(eA.listar());
    }

    public static void addPuesto(String nombre, String corto, String estado, String ids, String cod) {
        mp.put("nombre", nombre);
        mp.put("corto", corto);
        mp.put("estado", estado);
        mp.put("id_seccion", ids);
        mp.put("codigo", cod);
        if (eA.add(mp)) {
            System.out.println("Se agrego correctamente");
        } else {
            System.out.println("Error al agregar");
        }

    }

    public static void updatePuesto(String estado) {
        mp.put("estado", estado);
        if (eA.edit(mp)) {
            System.out.println("Se edito correctamente");
        } else {
            System.out.println("Error al editar");
        }

    }

    public static void deletePuesto(String id) {
        if (eA.delete(id)) {
            System.out.println("Se elimino correctamente");
        } else {
            System.out.println("Error al eliminar");
        }

    }

}
