/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.michaelsalvatierra.models.dao;

import com.michaelsalvatierra.db.Conexion;
import com.michaelsalvatierra.models.domain.Pedidos;
import com.michaelsalvatierra.models.idao.IPedidosDAO;
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
 * @time 7:51:36
 *
 * Codigo Tecnico: IN5BM
 */
public class PedidosDaoImpl implements IPedidosDAO {

    private static final String SQL_SELECT = "SELECT id, tarjeta_id,combo_id,usuario_id, sede_id, order_status_id,comentario FROM pedidos ;";
    private Connection con = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;
    private Pedidos pedidos = null;
    private List<Pedidos> listaPedidos = new ArrayList<>();

    @Override
    public List<Pedidos> getAll() {
        try {
            con = Conexion.getConnection();
            pstmt = con.prepareStatement(SQL_SELECT);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                pedidos = new Pedidos(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7)
                );
                System.out.println(pedidos.toString());
                listaPedidos.add(pedidos);
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
        return listaPedidos;
    }

    @Override
    public boolean add(Pedidos pedidos) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public boolean update(Pedidos pedidos) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public boolean delete(Pedidos pedidos) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
