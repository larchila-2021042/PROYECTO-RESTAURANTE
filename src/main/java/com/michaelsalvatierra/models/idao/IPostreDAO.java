package com.michaelsalvatierra.models.idao;

/**
 *
 * @author octav
 */

import com.michaelsalvatierra.models.domain.Postre;
import java.util.List;
public interface IPostreDAO {
    //Listar todos los registros

    public List<Postre> getAll();

    //Insertar un registtro 
    public boolean add(Postre postre);

    //Actualizar un registro
    public boolean update(Postre postre);

    //Eliminar un registro
    public boolean delete(Postre postre);
}
