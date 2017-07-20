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
import org.springframework.security.authentication.encoding.PasswordEncoder;
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
    
     public List<Map<String, Object>> asignar_permiso(String id)
     {
        String sql="select co.ID_CONTRATO, t.NO_TRABAJADOR nom,t.AP_PATERNO ap_p,t.AP_MATERNO ap_m,t.DI_CORREO_INST correo,t.NU_DOC n_d,t.TI_DOC t,t.ES_SEXO sexo,to_char(t.FE_NAC,'DD-MM-YYYY') AS F FROM RHTM_TRABAJADOR t,RHTM_CONTRATO co WHERE co.ID_TRABAJADOR=t.ID_TRABAJADOR AND t.ID_TRABAJADOR = ?"; 
        return jt.queryForList(sql,id);
        
     }
     public List<Map<String,Object>>asignar_masivamente(String data [])
     {
         String sql="select DI_CORREO_INST,ES_SEXO,FE_NAC FROM RHTM_TRABAJADOR WHERE ID_TRABAJADOR IN(?,?,?,?)";
        return jt.queryForList(sql, (Object[]) data);
     }

}
