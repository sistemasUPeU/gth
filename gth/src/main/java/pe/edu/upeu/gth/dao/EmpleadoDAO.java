/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import pe.edu.upeu.gth.interfaces.Operaciones;

/**
 *
 * @author Alfa003
 */
public class EmpleadoDAO implements Operaciones{
 private JdbcTemplate jt;
 
 
 public EmpleadoDAO(DataSource dataSource)       
 {
     jt= new JdbcTemplate(dataSource);
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
    public List<Map<String,Object>>listar_empleado()
    {

        String sql_list_emp="select t.NO_TRABAJADOR,t.AP_PATERNO,t.AP_MATERNO,ar.NO_AREA,se.NO_SECCION,pu.NO_PUESTO,TO_CHAR(co.FE_DESDE,'DD/MM/YYYY') as FE,TO_CHAR(co.FE_HASTA,'DD/MM/YYYY')as FE2\n" +
"from RHTD_EMPLEADO e,RRHH.RHTM_TRABAJADOR t,RHTM_CONTRATO co,RHTR_PUESTO pu,RHTR_SECCION se,RHTD_AREA ar\n" +
"WHERE e.ID_TRABAJADOR=t.ID_TRABAJADOR AND co.ID_TRABAJADOR=t.ID_TRABAJADOR and pu.ID_PUESTO=co.ID_PUESTO AND pu.ID_SECCION=se.ID_SECCION and ar.ID_AREA=se.ID_AREA AND co.FE_HASTA>=SYSDATE AND (co.FE_HASTA-co.FE_DESDE)>=365";

        return jt.queryForList(sql_list_emp);
    }
    public List<Map<String, Object>>listar_vacaciones(String id){
        String sql_list_vac="SELECT A.ID_CONTRATO, A.FE_HASTA,A.FE_DESDE, A.ID_DGP,N.ID_DGP, N.ID_TRABAJADOR, D.ID_TRABAJADOR, D.NO_TRABAJADOR,D.AP_PATERNO,D.AP_MATERNO,D.DI_CORREO_PERSONAL,D.DI_CORREO_INST,D.NU_DOC,D.TE_TRABAJADOR, D.CL_TRA FROM RHTM_CONTRATO A, RHTM_DGP N, RHTM_TRABAJADOR D WHERE A.ID_DGP=N.ID_DGP AND N.ID_TRABAJADOR=D.ID_TRABAJADOR AND A.FE_HASTA>=SYSDATE AND (A.FE_HASTA-A.FE_DESDE)>=365";
        return jt.queryForList(sql_list_vac);
    }  
    
}
