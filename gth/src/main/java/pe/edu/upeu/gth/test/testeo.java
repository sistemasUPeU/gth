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
import pe.edu.upeu.gth.dao.CUniversitarioDAO;
import pe.edu.upeu.gth.dao.EmpleadoDAO;
import pe.edu.upeu.gth.dao.PrivilegioDAO;
import pe.edu.upeu.gth.dao.RenunciaDAO;
import pe.edu.upeu.gth.dao.RolDAO;
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
    public static RolDAO rD=new RolDAO(d);
    public static PrivilegioDAO pD = new PrivilegioDAO(d);
    public static Map<String, Object> mp = new HashMap<>();
//    public static Client asd=new Client();
    public static EmpleadoDAO Ea = new EmpleadoDAO(d);
    public static UsuarioDAO uD = new UsuarioDAO(d);
    public static CUniversitarioDAO cD = new CUniversitarioDAO(d);

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
        //validar("liliana", "123");
        //detalleTr("TRB-002742");
        //listar_puestosejemplo("PUT-002011");
        //testearL("");
        String queryColumns = "SELECT c.id_contrato,DT.\"ID_TRABAJADOR\",DT.\"AP_PATERNO\",DT.\"AP_MATERNO\",DT.\"NO_TRABAJADOR\",DT.\"TI_DOC\",DT.\"NU_DOC\",DT.\"ES_CIVIL\",\n"
                + "    DT.\"FE_NAC\",DT.\"NO_NACIONALIDAD\",DT.\"NO_DEPARTAMENTO\",DT.\"NO_PROVINCIA\",DT.\"NO_DISTRITO\",DT.\"TE_TRABAJADOR\",DT.\"CL_TRA\",DT.\"DI_CORREO_PERSONAL\",DT.\"DI_CORREO_INST\",\n"
                + "    DT.\"CO_SISTEMA_PENSIONARIO\",DT.\"ID_SITUACION_EDUCATIVA\",DT.\"LI_REG_INST_EDUCATIVA\",DT.\"ES_INST_EDUC_PERU\",\n"
                + "    DT.\"CM_OTROS_ESTUDIOS\",DT.\"ES_SEXO\",DT.\"LI_GRUPO_SANGUINEO\",DT.\"DE_REFERENCIA\",\n"
                + "    DT.\"LI_RELIGION\",DT.\"NO_IGLESIA\",DT.\"DE_CARGO\",DT.\"LI_AUTORIDAD\",DT.\"NO_AP_AUTORIDAD\",DT.\"CL_AUTORIDAD\",\n"
                + "    DT.\"ID_NO_AFP\",DT.\"ES_AFILIADO_ESSALUD\",DT.\"LI_TIPO_TRABAJADOR\",DT.\"CA_TIPO_HORA_PAGO_REFEERENCIAL\",\n"
                + "    DT.\"ES_FACTOR_RH\",DT.\"LI_DI_DOM_A_D1\",\n"
                + "    DT.\"DI_DOM_A_D2\",DT.\"LI_DI_DOM_A_D3\",DT.\"DI_DOM_A_D4\",DT.\"LI_DI_DOM_A_D5\",DT.\"DI_DOM_A_D6\",DT.\"DI_DOM_A_REF\",DT.\"DI_DOM_A_DISTRITO\",DT.\"LI_DI_DOM_LEG_D1\",\n"
                + "    DT.\"DI_DOM_LEG_D2\",DT.\"LI_DI_DOM_LEG_D3\",\n"
                + "    DT.\"DI_DOM_LEG_D4\",DT.\"LI_DI_DOM_LEG_D5\",DT.\"DI_DOM_LEG_D6\",DT.\"DI_DOM_LEG_DISTRITO\",\n"
                + "    DT.\"CA_ING_QTA_CAT_EMPRESA\",DT.\"CA_ING_QTA_CAT_RUC\",DT.\"CA_ING_QTA_CAT_OTRAS_EMPRESAS\",\n"
                + "    DT.\"CM_OBSERVACIONES\",DT.\"US_CREACION\",  DT.\"FE_CREACION\",DT.\"US_MODIF\",DT.\"FE_MODIF\",DT.\"IP_USUARIO\",DT.\"ID_USUARIO_CREACION\",DT.\"ID_UNIVERSIDAD_CARRERA\",\n"
                + "    DT.\"ID_NACIONALIDAD\",DT.\"DISTRITO_NAC\",DT.\"NO_S_EDUCATIVA\",DT.\"AP_NOMBRES_MADRE\",DT.\"AP_NOMBRES_PADRE\",DT.\"ES_TRABAJA_UPEU_C\",DT.\"AP_NOMBRES_C\",DT.\"FE_NAC_C\",\n"
                + "    DT.\"ID_TIPO_DOC_C\",DT.\"NU_DOC_C\",DT.\"LI_INSCRIPCION_VIG_ESSALUD_C\",DT.\"ID_CONYUGUE\",DT.\"NO_CARRERA\",DT.\"NO_UNIVERSIDAD\",DT.\"AR_FOTO\",DT.\"DE_FOTO\",DT.\"ID_FOTO\",DT.\"NO_AR_FOTO\",DT.\"TA_AR_FOTO\",\n"
                + "    dpd.no_puesto ,dpd.no_seccion,dpd.no_area,dpd.id_direccion,dpd.no_dep,dpd.id_departamento ,\n"
                + "    dpd.id_area,dpd.id_seccion,c.id_puesto,e.id_empleado,c.fe_creacion AS fe_creacion_contrato, c.ca_sueldo,to_char(c.fe_desde, 'yyyy-mm-dd') as fe_desde,\n"
                + "    to_char(c.fe_hasta, 'yyyy-mm-dd') as fe_hasta,dt.ID_UNIVERSIDAD,dt.ID_TIPO_INSTITUCION,\n"
                + "    dt.CO_UNIVERSIDAD,dt.ID_CARRERA,dt.CO_NACIONALIDAD,dpd.NO_DIRECCION ";
        String query = "  FROM RHTD_EMPLEADO e,\n"
                + "    RHVD_TRABAJADOR dt ,\n"
                + "    RHTM_CONTRATO c ,\n"
                + "    RHVD_PUESTO_DIRECCION dpd"
                + "  WHERE dt.id_trabajador = c.id_trabajador\n"
                + "  AND e.id_trabajador    = c.id_trabajador\n"
                + "  AND dpd.id_puesto      = c.id_puesto\n"
                + "  AND c.es_contrato      =1  ";
        System.out.println(getformatString(queryColumns + ", %s " + query + " %s",1,1,"c.fe_creacion"));
        testListRol("ROL-0002");
    }

    public static void testListRol(String a){
        System.out.println(rD.List_Modulos(a));
    
    }
    
    public static void validar(String u, String p) {

        System.out.println(uD.validar(u, p));
    }

    public static void testearL(String a) {
        System.out.println(cD.listar_c_cu(a));
    }

    //--
    public static void listar_puestosejemplo(String id) {
        //System.out.println(eA.listajt(id));
        System.out.println(eA.listajt(id, "1"));
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
        System.out.println(eA.listara("PUT-002011", "1"));
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

    public static void detalleTr(String id) {
        RenunciaDAO rda = new RenunciaDAO(d);
        System.out.println(rda.DetalleEmp(id));
    }
    public static String getformatString(String o, int pageNumber, int pageSize,String orderby){
        return String.format(" SELECT * FROM(  " + o + "  ) WHERE row_number >= (((" + pageNumber + "-1) * " + pageSize + ") + 1)", 
                " row_number() over (order by "+orderby+" desc) row_number    ", " AND  rownum < ((" + pageNumber + " * " + pageSize + ") + 1 ) ");
    }
}
