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
        return (ArrayList<Map<String, Object>>) jt.queryForList(sql);
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

    public ArrayList<Map<String, Object>> validar(String usuario, String pass) {
        sql = "select * from rhvd_usuario where trim(no_usuario)=? and trim(pw_usuario)=?";
        return (ArrayList<Map<String, Object>>) jt.queryForList(sql, usuario, pass);
    }

}
