/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.dao;

import java.util.ArrayList;
import java.util.Map;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import pe.edu.upeu.gth.interfaces.Operaciones;

/**
 *
 * @author Brandux
 */
public class RenunciaDAO implements Operaciones{
    private static  JdbcTemplate jt;

    public RenunciaDAO(DataSource dataSource) {
        jt = new JdbcTemplate(dataSource);
    }
    @Override
    public ArrayList<Map<String, Object>> listar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Object o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit(Object o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(Object o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    public ArrayList<Map<String, Object>> listarEmpleados(){ // lista a todos los empleados por departamento.
        String sql="select rt.ID_TRABAJADOR,rt.NO_TRABAJADOR,rt.AP_PATERNO,rt.AP_MATERNO, rt.NU_DOC  ,ra.NO_AREA,rs.NO_SECCION,rp.NO_PUESTO,rc.FE_DESDE,rc.FE_HASTA\n" +
                    "from rhtr_puesto rp, rhtd_area ra, rhtr_seccion rs, rhtm_trabajador rt, rhtm_contrato rc,rhtx_departamento rd\n" +
                    "where rp.ID_SECCION = rs.ID_SECCION and rs.ID_AREA = ra.ID_AREA and rc.ID_PUESTO = rp.ID_PUESTO  and rc.ID_TRABAJADOR = rt.ID_TRABAJADOR and rd.ID_DEPARTAMENTO = ra.ID_DEPARTAMENTO\n" +
                    "       and rd.ID_DEPARTAMENTO='DPT-0017'\n" +
                    "AND RC.FE_HASTA > SYSDATE \n" +
                    "ORDER BY ( RA.NO_AREA)"; 
        return (ArrayList<Map<String, Object>>) jt.queryForList(sql);
    }
    
    public ArrayList<Map<String , Object>> DetalleEmp (String idTR){ // Esto Lista el detalle del Trabajador.
        String sql = "select rc.ID_CONTRATO , rc.ID_DGP , rt.ID_TRABAJADOR,rt.NO_TRABAJADOR,rt.AP_PATERNO,rt.AP_MATERNO, rt.NU_DOC , rt.CL_TRA   ,ra.NO_AREA,rs.NO_SECCION,rp.NO_PUESTO,TO_CHAR(rc.FE_DESDE, 'Month DD, YYYY')AS FEC_INI ,TO_CHAR(rc.FE_HASTA, 'Month DD, YYYY')AS FEC_FIN \n" +
                        "from rhtr_puesto rp, rhtd_area ra, rhtr_seccion rs, rhtm_trabajador rt, rhtm_contrato rc,rhtx_departamento rd\n" +
                        "where rp.ID_SECCION = rs.ID_SECCION and rs.ID_AREA = ra.ID_AREA and rc.ID_PUESTO = rp.ID_PUESTO  and rc.ID_TRABAJADOR = rt.ID_TRABAJADOR and rd.ID_DEPARTAMENTO = ra.ID_DEPARTAMENTO\n" +
                        "       and rd.ID_DEPARTAMENTO='DPT-0017' and RT.ID_TRABAJADOR = ? ";
        return (ArrayList<Map<String,Object>>) jt.queryForList(sql,idTR.trim());
    }
    
   
}
