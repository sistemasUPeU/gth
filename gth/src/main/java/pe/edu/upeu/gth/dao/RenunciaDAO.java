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
    private JdbcTemplate jt;

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
    
    
    public ArrayList<Map<String, Object>> listarEmpleados(){
        String sql="SELECT CO.FE_DESDE, CO.FE_HASTA ,  CO.ID_TRABAJADOR  ,T.AP_PATERNO, T.AP_MATERNO, T.NO_TRABAJADOR , T.NU_DOC , P.NO_PUESTO , S.NO_SECCION , A.NO_AREA \n" +
                                "FROM  RHTM_CONTRATO CO , RHTR_PUESTO P , RHTM_TRABAJADOR T ,RHTX_DEPARTAMENTO D , RHTR_SECCION S , RHTD_AREA A\n" +
                                "WHERE  T.ID_TRABAJADOR = CO.ID_TRABAJADOR AND  P.ID_PUESTO = CO.ID_PUESTO AND P.ID_SECCION = S.ID_SECCION AND S.ID_AREA = A.ID_AREA AND A.ID_DEPARTAMENTO = D.ID_DEPARTAMENTO\n" +
                                "AND P.ID_PUESTO IN (\n" +
                                "      SELECT ID_PUESTO FROM rhtr_puesto WHERE ID_SECCION IN (\n" +
                                "            SELECT ID_SECCION FROM rhtr_SECCION WHERE ID_AREA IN (SELECT ID_AREA FROM  RHTD_AREA A WHERE A.ID_DEPARTAMENTO = 'DPT-0017'\n" +
                                "                  )\n" +
                                "            )\n" +
                                ") AND CO.FE_HASTA > SYSDATE \n" +
                                "ORDER BY ( A.NO_AREA);"; 
        return (ArrayList<Map<String, Object>>) jt.queryForList(sql);
        
    }
}
