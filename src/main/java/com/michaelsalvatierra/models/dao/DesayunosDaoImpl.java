/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.michaelsalvatierra.models.dao;

import com.michaelsalvatierra.db.Conexion;
import com.michaelsalvatierra.models.domain.Desayunos;
import com.michaelsalvatierra.models.domain.Tarjeta;
import com.michaelsalvatierra.models.idao.IDesayunosDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Jose Mauricio Villeda Morales
 * @date 3 sept. 2022
 * @time 0:25:34
 *
 * Codigo Tecnico: IN5BM
 */
public class DesayunosDaoImpl implements IDesayunosDAO {

    private static final String SQL_SELECT = "SELECT combo.id, combo.nombre, po.id, po.nombre, pla.id, pla.nombre, b.id, b.nombre, combo.precio, combo.ruta_imagen,combo.tiempo FROM combo \n"
            + "JOIN postre AS po ON combo.postre_id = po.id \n"
            + "JOIN platillo AS pla ON combo.platillo_id= pla.id \n"
            + "JOIN bebida AS b ON combo.bebida_id=b.id AND tiempo=\"DESAYUNO\";";
    private Connection con = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;
    private Desayunos desayunos = null;
    private List<Desayunos> listaDesayunos = new ArrayList<>();

    @Override
    public List<Desayunos> getAll() {
        try {
            con = Conexion.getConnection();
            pstmt = con.prepareStatement(SQL_SELECT);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                desayunos = new Desayunos(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getFloat(9),
                        rs.getString(10),
                        rs.getString(11)
                );
                System.out.println(desayunos.toString());
                listaDesayunos.add(desayunos);
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(pstmt);
            Conexion.close(con);
        }
        return listaDesayunos;
    }

    @Override
    public boolean add(Desayunos desayunos) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public boolean update(Desayunos desayunos) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public boolean delete(Desayunos desayunos) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
