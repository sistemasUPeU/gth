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
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import pe.edu.upeu.gth.config.AppConfig;
import pe.edu.upeu.gth.interfaces.Operaciones;

/**
 *
 * @author Leandro Burgos
 */
public class RolDAO implements Operaciones {

    String sql;
    PreparedStatement ps;
    CallableStatement cs;
    ResultSet rs;
    Connection cn;
    DataSource d = AppConfig.getDataSource();

    private final JdbcTemplate jt;

    public RolDAO(DataSource dataSource) {
        jt = new JdbcTemplate(dataSource);
    }

    @Override
    public ArrayList<Map<String, Object>> listar() {
        sql = "select * from RHTR_ROL order by no_rol asc";
        ArrayList<Map<String, Object>> lista = new ArrayList<>();
        try {
            cn = d.getConnection();
            ps = cn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Map<String, Object> m = new HashMap<>();
                m.put("id_rol", rs.getString("id_rol"));
                m.put("no_rol", rs.getString("no_rol"));
                m.put("es_rol", rs.getString("es_rol"));
                lista.add(m);
            }
        } catch (Exception e) {
            System.out.println("Error al Listar Roles" + e);
        } finally {
            try {
                cn.close();
            } catch (SQLException ex) {
                Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return lista;
    }

    @Override
    public boolean add(Object o) {
        boolean p = false;
        sql = "{CALL RHSP_INSERT_ROL( null,?,?)}";
        Map<String, Object> m = (Map<String, Object>) o;
        try {
            cs = d.getConnection().prepareCall(sql);
            cs.setString(1, m.get("nombre").toString());
            cs.setString(2, m.get("estado").toString());
            int r = cs.executeUpdate();
            if (r > 0) {
                p = true;
            }
        } catch (SQLException | NumberFormatException e) {
            System.out.println("Error al agregar Rol " + e);
            p = false;
        } finally {
            try {
                d.getConnection().close();
            } catch (SQLException ex) {
                Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return p;
    }

    @Override
    public boolean edit(Object o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(Object o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public ArrayList<Map<String, Object>> List_rol(String idrol) {
        sql = "select * from RHTR_ROL where id_rol=?";
        ArrayList<Map<String, Object>> lista = new ArrayList<>();
        try {
            cn = d.getConnection();
            ps = cn.prepareStatement(sql);
            ps.setString(1, idrol);
            rs = ps.executeQuery();
            while (rs.next()) {
                Map<String, Object> m = new HashMap<>();
                m.put("id_rol", rs.getString("id_rol"));
                m.put("no_rol", rs.getString("no_rol"));
                m.put("es_rol", rs.getString("es_rol"));
                lista.add(m);
            }
        } catch (Exception e) {
            System.out.println("Error al Listar Roles" + e);
        } finally {
            try {
                cn.close();
            } catch (SQLException ex) {
                Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return lista;
    }

    public ArrayList<Map<String, Object>> List_Modulos(Object idrol) {
        sql = "select DISTINCT(ID_MODULO) AS ID_MODULO,NO_MODULO ,DE_MODULO, IC_MODULO,ID_ROL from  RHVD_PRIVILEGIO WHERE ID_ROL='"+idrol.toString()+"'";
        ArrayList<Map<String, Object>> lista = new ArrayList<>();
        try {
            cn = d.getConnection();
            ps = cn.prepareStatement(sql);
            //ps.setString(1, idrol.toString());
            rs = ps.executeQuery();
            while (rs.next()) {
                Map<String, Object> m = new HashMap<>();
                m.put("id_rol", rs.getString("id_rol"));
                m.put("id_modulo", rs.getString("id_modulo"));
                m.put("no_modulo", rs.getString("no_modulo"));
                m.put("IC_MODULO", rs.getString("IC_MODULO"));
                m.put("de_modulo", rs.getString("de_modulo"));
                lista.add(m);
            }
        } catch (Exception e) {
            System.out.println("Error al Listar List_Modulos : " + e);
        } finally {
            try {
                cn.close();
            } catch (SQLException ex) {
                Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return lista;
    }

    public ArrayList<Map<String, Object>> Listar_Rol_Privilegio(String idrol) {
        sql = "SELECT P.NO_LINK, e.ES_DETALLE_PRIVILEGIO,e.ID_DETALLE_PRIVILEGIO FROM RHTD_DETALLE_PRIVILEGIO e , RHTR_ROL r, RHTV_PRIVILEGIO WHERE e.ID_ROL = r.ID_ROL AND e.ID_PRIVILEGIO=P.ID_PRIVILEGIO AND e.ID_ROL =?";
        ArrayList<Map<String, Object>> lista = new ArrayList<>();
        try {
            cn = d.getConnection();
            ps = cn.prepareStatement(sql);
            ps.setString(1, idrol);
            rs = ps.executeQuery();
            while (rs.next()) {
                Map<String, Object> m = new HashMap<>();
                m.put("No_link", rs.getString("No_link"));
                m.put("Es_detalle_privilegio", rs.getString("Es_detalle_privilegio"));
                m.put("Id_detalle_privilegio", rs.getString("Id_detalle_privilegio"));
                lista.add(m);
            }
        } catch (Exception e) {
            System.out.println("Error al Listar Listar_Rol_Privilegio" + e);
        } finally {
            try {
                cn.close();
            } catch (SQLException ex) {
                Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return lista;
    }

}
