/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.sql.DataSource;
import pe.edu.upeu.gth.config.AppConfig;
import pe.edu.upeu.gth.interfaces.Operaciones;

/**
 *
 * @author Alfa003
 */
public class ejemploDAO implements Operaciones {

    String sql;
    PreparedStatement ps;
    CallableStatement cs;
    ResultSet rs;
    Connection cn;
    DataSource d = AppConfig.getDataSource();

    @Override
    public ArrayList<Map<String, ?>> listar() {
        sql = "select * from rhtr_puesto";
        ArrayList<Map<String, ?>> lista = new ArrayList<>();
        try {
            cs = d.getConnection().prepareCall(sql);
            rs = cs.executeQuery();
            while (rs.next()) {
                Map<String, Object> m = new HashMap<>();
                m.put("id", rs.getString(1));
                m.put("puesto", rs.getString(2));
                m.put("nombre", rs.getString(3));
                m.put("estado", rs.getString(4));
                m.put("id_seccion", rs.getString(5));
                m.put("codigo", rs.getString(6));
                lista.add(m);
            }
        } catch (Exception e) {
            System.out.println("Error al Listar Puestos" + e);
        }
        return lista;
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

}
