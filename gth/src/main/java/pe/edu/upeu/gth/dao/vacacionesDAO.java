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
public class vacacionesDAO implements Operaciones{
    JdbcTemplate jt;
    
    public vacacionesDAO(DataSource dataSource)       
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
    
     public ArrayList<Map<String, Object>> asignar_permiso(String id)
     {
        String sql="select DI_CORREO_INST,NU_DOC,TI_DOC,ES_SEXO,FE_NAC FROM RHTM_TRABAJADOR WHERE ID_TRABAJADOR = ?"; 
        return (ArrayList<Map<String, Object>>) jt.queryForList(sql,id);
     }
}
