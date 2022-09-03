package com.michaelsalvatierra.models.idao;
import com.michaelsalvatierra.models.domain.Usuario;
import java.util.List;


/**
 *
 * @author W10
 * @date Sep 2, 2022
 * @time 7:16:27 PM
 */
public interface IUsuarioDAO {
        //Listar todos los registros
    public List <Usuario> getAll();
    
    //Insertar un registtro 
    public boolean add(Usuario usuario); 
    
    //Actualizar un registro
    public boolean update(Usuario usuario);
    
    //Eliminar un registro
    public boolean delete(Usuario usuario);
    
}
