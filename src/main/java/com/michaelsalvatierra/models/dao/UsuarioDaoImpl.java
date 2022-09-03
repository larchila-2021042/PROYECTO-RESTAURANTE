package com.michaelsalvatierra.models.dao;
import com.michaelsalvatierra.db.*;
import com.michaelsalvatierra.models.domain.Usuario;
import com.michaelsalvatierra.models.idao.IUsuarioDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.michaelsalvatierra.db.Conexion;
import java.sql.SQLException;

/**
 *
 * @author W10
 * @date Sep 2, 2022
 * @time 7:15:44 PM
 */
public class UsuarioDaoImpl implements IUsuarioDAO{
    private static final String SQL_SELECT="/*SELECT PARA VER Usuario*/\n" +
"SELECT us.correo, us.password, us.rol_id, r.nombre AS rol, us.persona_id, CONCAT(p.nombre1,\" \", p.apellido1) AS nombrePersona\n" +
"FROM usuario AS us \n" +
"JOIN rol AS r ON us.rol_id=r.id\n" +
"JOIN persona AS p ON us.persona_id= p.id;";
    private Connection con = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;
    private Usuario usuario = null;
    private List<Usuario> listaUsuarios = new ArrayList<>();
    
    @Override
    public List<Usuario> getAll() {
       try{
          con =  Conexion.getConnection();
          pstmt = con.prepareStatement(SQL_SELECT);
          rs = pstmt.executeQuery();
          
          while(rs.next()){
              usuario = new Usuario( 
                      rs.getString("correo"),
                      rs.getString("password"),
                      rs.getInt("rol_id"),
                      rs.getString("rol"),
                      rs.getInt("persona_id"),
                      rs.getString("nombrePersona")
              );
                    System.out.println(usuario.toString());
              listaUsuarios.add(usuario);
          }
       }catch(SQLException e){
           e.printStackTrace(System.out);
       }catch(Exception e){
           e.printStackTrace(System.out);
       }finally{
           Conexion.close(rs);
           Conexion.close(pstmt);
           Conexion.close(con);
       }
       return listaUsuarios;
    }

    @Override
    public boolean add(Usuario usuario) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public boolean update(Usuario usuarioa) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public boolean delete(Usuario usuarioa) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
}
