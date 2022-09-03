package com.michaelsalvatierra.models.domain;

import java.sql.Date;

/**
 *
 * @author Jose Mauricio Villeda Morales
 * @date 2 sept. 2022
 * @time 19:16:28
 *
 * Codigo Tecnico: IN5BM
 */
public class Tarjeta {

    private String numeroDeTarjeta;
    private String nombreDeTarjeta;
    private Date fechaVencimiento;
    private String tipoDeTarjeta;

    public Tarjeta() {

    }

    public Tarjeta(String numeroDeTarjeta, String nombreDeTarjeta, Date fechaVencimiento, String tipoDeTarjeta) {
        this.numeroDeTarjeta = numeroDeTarjeta;
        this.nombreDeTarjeta = nombreDeTarjeta;
        this.fechaVencimiento = fechaVencimiento;
        this.tipoDeTarjeta = tipoDeTarjeta;
    }

    public Tarjeta(String numeroDeTarjeta, String nombreDeTarjeta, Date fechaVencimiento) {
        this.numeroDeTarjeta = numeroDeTarjeta;
        this.nombreDeTarjeta = nombreDeTarjeta;
        this.fechaVencimiento = fechaVencimiento;
    }

    public Tarjeta(String numeroDeTarjeta, String nombreDeTarjeta) {
        this.numeroDeTarjeta = numeroDeTarjeta;
        this.nombreDeTarjeta = nombreDeTarjeta;
    }

    public Tarjeta(String numeroDeTarjeta) {
        this.numeroDeTarjeta = numeroDeTarjeta;
    }

    // Getter's Y Setter's
    
    public String getNumeroDeTarjeta() {
        return numeroDeTarjeta;
    }

    public void setNumeroDeTarjeta(String numeroDeTarjeta) {
        this.numeroDeTarjeta = numeroDeTarjeta;
    }

    public String getNombreDeTarjeta() {
        return nombreDeTarjeta;
    }

    public void setNombreDeTarjeta(String nombreDeTarjeta) {
        this.nombreDeTarjeta = nombreDeTarjeta;
    }

    public Date getFechaVencimiento() {
        return fechaVencimiento;
    }

    public void setFechaVencimiento(Date fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }

    public String getTipoDeTarjeta() {
        return tipoDeTarjeta;
    }

    public void setTipoDeTarjeta(String tipoDeTarjeta) {
        this.tipoDeTarjeta = tipoDeTarjeta;
    }

    @Override
    public String toString() {
        return "Tarjeta{" + "numeroDeTarjeta=" + numeroDeTarjeta + ", nombreDeTarjeta=" + nombreDeTarjeta + ", fechaVencimiento=" + fechaVencimiento + ", tipoDeTarjeta=" + tipoDeTarjeta + '}';
    }
}
