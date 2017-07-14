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
 * @author Leandro Burgos
 */
public class PrivilegioDAO implements Operaciones {

    String sql;
    PreparedStatement ps;
    CallableStatement cs;
    ResultSet rs;
    Connection cn;
    DataSource d = AppConfig.getDataSource();

    @Override
    public ArrayList<Map<String, ?>> listar() {
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

    public ArrayList<Map<String, ?>> listarURLs(String idrol, String id_modulo) {
        ArrayList<Map<String, ?>> lista = new ArrayList<>();
        try {
            sql = "select * from  RHVD_PRIVILEGIO where ID_ROL=? and id_modulo=?";
            ps = d.getConnection().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Map<String, Object> m = new HashMap<>();
                m.put("url", sql);
                /*d.setDi_url(rs.getString("di_url"));
     d.setId_detalle_privilegio(rs.getString("id_detalle_privilegio"));
     d.setId_privilegio(rs.getString("id_privilegio"));
     d.setId_rol(rs.getString("id_rol"));
     d.setNo_link(rs.getString("no_link"));
     d.setIc_link(rs.getString("ic_link"));
     d.setNu_orden(rs.getInt("nu_orden"));*/
                
                lista.add(m);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return lista;
    }

    /*
     public List<V_Privilegio> listarURL(String idrol, String id_modulo) {
     this.conn = FactoryConnectionDB.open(FactoryConnectionDB.ORACLE);
     String sql = "select * from  RHVD_PRIVILEGIO where ID_ROL='" + idrol + "' and id_modulo='" + id_modulo + "'";
     List<V_Privilegio> list = new ArrayList<V_Privilegio>();
     try {
     ResultSet rs = this.conn.query(sql);
     while (rs.next()) {
     V_Privilegio d = new V_Privilegio();
     d.setDi_url(rs.getString("di_url"));
     d.setId_detalle_privilegio(rs.getString("id_detalle_privilegio"));
     d.setId_privilegio(rs.getString("id_privilegio"));
     d.setId_rol(rs.getString("id_rol"));
     d.setNo_link(rs.getString("no_link"));
     d.setIc_link(rs.getString("ic_link"));
     d.setNu_orden(rs.getInt("nu_orden"));
     list.add(d);

     }

     } catch (SQLException e) {
     } finally {
     this.conn.close();
     }

     return list;
     }
     */
}
