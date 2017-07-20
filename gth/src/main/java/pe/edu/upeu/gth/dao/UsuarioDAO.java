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
public class UsuarioDAO implements Operaciones {

    String sql;
    PreparedStatement ps;
    CallableStatement cs;
    ResultSet rs;
    Connection cn;
    DataSource d = AppConfig.getDataSource();

    private JdbcTemplate jt;

    public UsuarioDAO(DataSource dataSource) {
        jt = new JdbcTemplate(dataSource);
    }

    @Override
    public ArrayList<Map<String, Object>> listar() {
        sql = "SELECT * FROM RHTC_USUARIO";
        ArrayList<Map<String, Object>> lista = new ArrayList<>();
        try {
            cn = d.getConnection();
            ps = cn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Map<String, Object> m = new HashMap<>();
                m.put("id_usuario", rs.getString("id_usuario"));
                m.put("id_rol", rs.getString("id_rol"));
                m.put("id_empleado", rs.getString("id_empleado"));
                m.put("no_usuario", rs.getString("no_usuario"));
                m.put("pw_usuario", rs.getString("pw_usuario"));
                lista.add(m);
            }
        } catch (Exception e) {
            System.out.println("Error al Listar Usuarios" + e);
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

    public ArrayList<Map<String, ?>> validar(String usuario, String pass) {
        sql = "select * from rhvd_usuario where no_usuario='"+usuario+"' and pw_usuario='"+pass+"'";
        ArrayList<Map<String, ?>> lista = new ArrayList<>();
        try {
            ps = d.getConnection().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Map<String, Object> m = new HashMap<>();
                m.put("id_usuario", rs.getString("id_usuario"));
                m.put("id_rol", rs.getString("id_rol"));
                m.put("id_empleado", rs.getString("id_empleado"));
                m.put("no_usuario", rs.getString("no_usuario"));
                m.put("pw_usuario", rs.getString("pw_usuario"));
                m.put("id_trabajador", rs.getString("id_trabajador"));
                m.put("id_puesto", rs.getString("id_puesto"));
                m.put("id_area", rs.getString("id_area"));
                m.put("no_area", rs.getString("no_area"));
                m.put("no_dep", rs.getString("no_dep"));
                m.put("id_departamento", rs.getString("id_departamento"));
                m.put("no_puesto", rs.getString("no_puesto"));
                m.put("no_seccion", rs.getString("no_seccion"));
                m.put("no_trabajador", rs.getString("no_trabajador"));
                m.put("ap_paterno", rs.getString("ap_paterno"));
                m.put("ap_materno", rs.getString("ap_materno"));
                m.put("es_sexo", rs.getString("es_sexo"));
                m.put("id_direccion", rs.getString("id_direccion"));
                lista.add(m);
            }
        } catch (Exception e) {
            System.out.println("Error al Validar Usuario : " + e);
        } finally {
            try {
                d.getConnection().close();
            } catch (SQLException ex) {
                Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return lista;
    }

}
