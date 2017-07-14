/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.test;

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
    public static ejemploDAO eA=new ejemploDAO();
    
    public static void main(String[] args) {
        //conect();
        listar_puestos();
    }

    public static void conect() {
        DataSource d = AppConfig.getDataSource();

        if (d != null) {
            System.out.println("SI");
        } else {
            System.out.println("no");
        }
    }

    public static void listar_puestos(){
        System.out.println(eA.listar());
    }
    
}
