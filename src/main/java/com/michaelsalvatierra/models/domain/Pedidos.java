/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.michaelsalvatierra.models.domain;

/**
 *
 * @author Jose Mauricio Villeda Morales
 * @date 3 sept. 2022
 * @time 0:46:54
 *
 * Codigo Tecnico: IN5BM
 */
public class Pedidos {

    private int id;
    private String TarjetaId;
    private int comboId;
    private String usuarioId;
    private int sedeId;
    private int orderStatusId;
    private String comentario;

    public Pedidos(int id, String TarjetaId, int comboId, String usuarioId, int sedeId, int orderStatusId, String comentario) {
        this.id = id;
        this.TarjetaId = TarjetaId;
        this.comboId = comboId;
        this.usuarioId = usuarioId;
        this.sedeId = sedeId;
        this.orderStatusId = orderStatusId;
        this.comentario = comentario;
    }

    public Pedidos() {
    }

    public Pedidos(int id) {
        this.id = id;
    }

    public Pedidos(int id, String TarjetaId, int comboId, String usuarioId, int sedeId, int orderStatusId) {
        this.id = id;
        this.TarjetaId = TarjetaId;
        this.comboId = comboId;
        this.usuarioId = usuarioId;
        this.sedeId = sedeId;
        this.orderStatusId = orderStatusId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTarjetaId() {
        return TarjetaId;
    }

    public void setTarjetaId(String TarjetaId) {
        this.TarjetaId = TarjetaId;
    }

    public int getComboId() {
        return comboId;
    }

    public void setComboId(int comboId) {
        this.comboId = comboId;
    }

    public int getSedeId() {
        return sedeId;
    }

    public void setSedeId(int sedeId) {
        this.sedeId = sedeId;
    }

    public String getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(String usuarioId) {
        this.usuarioId = usuarioId;
    }

    public int getOrderStatusId() {
        return orderStatusId;
    }

    public void setOrderStatusId(int orderStatusId) {
        this.orderStatusId = orderStatusId;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    @Override
    public String toString() {
        return "Pedidos{" + "id=" + id + ", TarjetaId=" + TarjetaId + ", comboId=" + comboId + ", sedeId=" + sedeId + ", usuarioId=" + usuarioId + ", orderStatusId=" + orderStatusId + ", comentario=" + comentario + '}';
    }

}
