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
    public List<Map<String,Object>>listar_all()
    {
        String sql_list_emp="select t.NO_TRABAJADOR,t.AP_PATERNO,t.AP_MATERNO,ar.NO_AREA,se.NO_SECCION,pu.NO_PUESTO,co.FE_DESDE,co.FE_HASTA\n" +
"from RHTD_EMPLEADO e,RRHH.RHTM_TRABAJADOR t,RHTM_CONTRATO co,RHTR_PUESTO pu,RHTR_SECCION se,RHTD_AREA ar\n" +
"WHERE e.ID_TRABAJADOR=t.ID_TRABAJADOR AND co.ID_TRABAJADOR=t.ID_TRABAJADOR and pu.ID_PUESTO=co.ID_PUESTO AND pu.ID_SECCION=se.ID_SECCION and ar.ID_AREA=se.ID_AREA";
        return jt.queryForList(sql_list_emp);
    }
    
}
