/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.gth.config;

import java.io.IOException;
import javax.sql.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import pe.edu.upeu.gth.dao.AreaDAO;
import pe.edu.upeu.gth.dao.AutorizacionDAO;
import pe.edu.upeu.gth.dao.CUniversitarioDAO;
import pe.edu.upeu.gth.dao.Carga_AcademicaDAO;
import pe.edu.upeu.gth.dao.Carrera_UniversidadDAO;
import pe.edu.upeu.gth.dao.CentroCostoDAO;
import pe.edu.upeu.gth.dao.Comentario_DGPDAO;
import pe.edu.upeu.gth.dao.ContratoDAO;
import pe.edu.upeu.gth.dao.Datos_Hijo_TrabajadorDAO;
import pe.edu.upeu.gth.dao.DepartamentoDao;
import pe.edu.upeu.gth.dao.DetalleReqProcesoDAO;
import pe.edu.upeu.gth.dao.Detalle_Centro_Costo_DAO;
import pe.edu.upeu.gth.dao.Detalle_PrivilegioDAO;
import pe.edu.upeu.gth.dao.DgpDAO;
import pe.edu.upeu.gth.dao.DireccionDAO;
import pe.edu.upeu.gth.dao.DocumentoDAO;
import pe.edu.upeu.gth.dao.EmpleadoDAO;
import pe.edu.upeu.gth.dao.Formato_HorarioDAO;
import pe.edu.upeu.gth.dao.Fotos_TrabajadorDAO;
import pe.edu.upeu.gth.dao.FuncionDAO;
import pe.edu.upeu.gth.dao.PrivilegioDAO;
import pe.edu.upeu.gth.dao.RenunciaDAO;
import pe.edu.upeu.gth.dao.SeccionDAO;
import pe.edu.upeu.gth.dao.vacacionesDAO;
import pe.edu.upeu.gth.dao.UsuarioDAO;

/**
 *
 * @author UPEU
 */
@Configuration
@ComponentScan(basePackages = "pe.edu.upeu.gth")
@EnableWebMvc
public class AppConfig extends WebMvcConfigurerAdapter {

    @Bean
    public ViewResolver getViewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/jsp/");
        resolver.setSuffix(".jsp");
        return resolver;
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/**");
        registry.addResourceHandler("/jspf/**").addResourceLocations("/jspf/**");
    }

    @Bean
    public static DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("oracle.jdbc.OracleDriver");//driver-conexion//
        dataSource.setUrl("jdbc:oracle:thin:@" + globalProperties.HOSTNAME + ":" + globalProperties.PORT + ":" + globalProperties.SID + "");
        dataSource.setUsername(globalProperties.USER);//user-conexion//
        dataSource.setPassword(globalProperties.USER_PWD);//pass-conexion//
        return dataSource;
    }
    
    @Bean
    public AreaDAO getAreaDAO() {
        return new AreaDAO(getDataSource());
    }
    
    @Bean
    public AutorizacionDAO getAutorizacionDAO() {
        return new AutorizacionDAO(getDataSource());
    }
    
    @Bean
    public CUniversitarioDAO getCUniversitarioDAO() {
        return new CUniversitarioDAO(getDataSource());
    }
    
    @Bean
    public Carga_AcademicaDAO getCarga_AcademicaDAO() {
        return new Carga_AcademicaDAO(getDataSource());
    }
    
    @Bean
    public Carrera_UniversidadDAO getCarrera_UniversidadDAO() {
        return new Carrera_UniversidadDAO(getDataSource());
    }
    
    @Bean
    public CentroCostoDAO getCentro_CostoDAO() {
        return new CentroCostoDAO(getDataSource());
    }
    
    @Bean
    public Comentario_DGPDAO getComentario_DGPDAO() {
        return new Comentario_DGPDAO(getDataSource());
    }
    
    @Bean
    public ContratoDAO getContratoDAO() {
        return new ContratoDAO(getDataSource());
    }
    
    @Bean
    public Datos_Hijo_TrabajadorDAO getDatos_Hijo_TrabajadorDAO() {
        return new Datos_Hijo_TrabajadorDAO(getDataSource());
    }
    
    @Bean
    public DepartamentoDao getDepartamentoDao() {
        return new DepartamentoDao(getDataSource());
    }
    
    @Bean
    public DetalleReqProcesoDAO getDetalleReqProcesoDAO() {
        return new DetalleReqProcesoDAO(getDataSource());
    }
    
    @Bean
    public Detalle_Centro_Costo_DAO getDetalle_Centro_Costo_DAO() {
        return new Detalle_Centro_Costo_DAO(getDataSource());
    }
    
    @Bean
    public Detalle_PrivilegioDAO getDetalle_PrivilegioDAO() {
        return new Detalle_PrivilegioDAO(getDataSource());
    }
    
    @Bean
    public DgpDAO getDgpDAO() {
        return new DgpDAO(getDataSource());
    }
    
    @Bean
    public DireccionDAO getDireccionDAO() {
        return new DireccionDAO(getDataSource());
    }
    
    @Bean
    public DocumentoDAO getDocumentoDAO() {
        return new DocumentoDAO(getDataSource());
    }
    
    @Bean
    public Formato_HorarioDAO getFormato_HorarioDAO() {
        return new Formato_HorarioDAO(getDataSource());
    }
    
    @Bean
    public Fotos_TrabajadorDAO getFotos_TrabajadorDAO() {
        return new Fotos_TrabajadorDAO(getDataSource());
    }
    
    @Bean
    public FuncionDAO getFuncionDAO() {
        return new FuncionDAO(getDataSource());
    }
    
    @Bean
    public EmpleadoDAO getLista_EmpleadoDAO() {
        return new EmpleadoDAO(getDataSource());
    }

    @Bean
    public PrivilegioDAO getPrivilegioDAO() {
        return new PrivilegioDAO(getDataSource());
    }

    @Bean
    public vacacionesDAO getvacacionesDAO() {
        return new vacacionesDAO(getDataSource());
    }

    @Bean
    public RenunciaDAO getRenunciaDAO() {
        return new RenunciaDAO(getDataSource());
    }

    @Bean
    public UsuarioDAO getUsuarioDAO() {
        return new UsuarioDAO(getDataSource());
    }

    @Bean
    public SeccionDAO getSeccionDAO() {
        return new SeccionDAO(getDataSource());
    }
    
//    CONFIGURACION DE MULTIPARTRESOLVER PARA TRABAJAR CONN ARCHUIVOS--
    @Bean(name = "multipartResolver")
    public CommonsMultipartResolver getResolver() throws IOException {
        CommonsMultipartResolver resolver = new CommonsMultipartResolver();
        // no limit
        resolver.setMaxUploadSize(-1);
        return resolver;
    }
   

}
