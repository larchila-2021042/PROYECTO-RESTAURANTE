package com.michaelsalvatierra.models.idao;

/**
 *
 * @author Luis Fernando Archila Valdez
 */
import com.michaelsalvatierra.models.domain.Almuerzo;
import java.util.List;
public interface IAlmuerzoDAO {
    //Listar todos los registros

    public List<Almuerzo> getAll();

    //Insertar un registtro 
    public boolean add(Almuerzo almuerzo);

    //Actualizar un registro
    public boolean update(Almuerzo almuerzo);

    //Eliminar un registro
    public boolean delete(Almuerzo almuerzo);
}
