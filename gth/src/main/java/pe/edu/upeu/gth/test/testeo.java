/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.sql.DataSource;
import pe.edu.upeu.gth.config.AppConfig;
import pe.edu.upeu.gth.dao.EmpleadoDAO;
import pe.edu.upeu.gth.dao.PrivilegioDAO;
import pe.edu.upeu.gth.dao.RenunciaDAO;
import pe.edu.upeu.gth.dao.UsuarioDAO;
import pe.edu.upeu.gth.dao.ejemploDAO;

/**
 *
 * @author Alfa003
 */
public class testeo {

    /**
     * @param args the command line arguments
     */
    public static DataSource d = AppConfig.getDataSource();

    public static ejemploDAO eA = new ejemploDAO(d);
    public static PrivilegioDAO pD = new PrivilegioDAO(d);
    public static Map<String, Object> mp = new HashMap<>();
//    public static Client asd=new Client();
    public static EmpleadoDAO Ea = new EmpleadoDAO(d);
    public static UsuarioDAO uD=new UsuarioDAO(d);

    public static void main(String[] args) {
        //conect();
        //listar_puestos();
        //addPuesto("Esclavo", "es", "1", "SEC-0003", "3");
        //updatePuesto("1");
        //deletejdbc("PUT-002012");
        //listar_puestosejemplo("PUT-000269");
        //listar_puestosejemplo("PUT-000198");
        //pR("ROL-0019", "MOD-0003");
        //System.out.println(asd.getSessionJson());
        //Listar_empleados();
        validar("liliana", "123");
        //detalleTr("TRB-002742");
        //listar_puestosejemplo("PUT-002011");
    }

    public static void validar(String u,String p){
        
        System.out.println(uD.validar(u, p));
    }
    
    //--
    public static void listar_puestosejemplo(String id) {
        //System.out.println(eA.listajt(id));
        System.out.println(eA.listajt(id,"1"));
    }

    ///
    public static void Listar_empleados() {
        /*List<Map<String, Object>> l = Ea.listar_all();
        for (Map<String, Object> map : l) {
            System.out.println(map.get(("NO_TRABAJADOR")));
        }*/
    }

    public static void pR(String a, String b) {
        System.out.println(a);
        System.out.println(b);
        ArrayList<Map<String, Object>> s = pD.listarURLs(a, b);
        for (int i = 0; i < s.size(); i++) {
            System.out.println(s.get(i).get("ID_PRIVILEGIO").toString().trim());
        }
    }

    public static void conect() {
        DataSource d = AppConfig.getDataSource();

        if (d != null) {
            System.out.println("SI");
        } else {
            System.out.println("no");
        }
    }

    public static void listar_puestos() {
        System.out.println(eA.listara("PUT-002011","1"));
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
    public static void detalleTr (String id){
        RenunciaDAO rda = new RenunciaDAO(d);
        System.out.println(rda.DetalleEmp(id));
    }
}
