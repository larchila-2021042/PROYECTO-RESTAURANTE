<%-- 
    Document   : login
    Created on : Sep 2, 2022, 2:49:20 PM
    Author     : W10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <title>Forno Bistro</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="./assets/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="./assets/css/hoja-estilo-login.css" />
    <script src="./assets/js/fonticon.js" def></script>
</head>

<body>
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-2">
                    <a href="index.jsp">
                        <i class="fa-solid fa-arrow-left fa-2x settings"></i>
                    </a>
                </div>
                <div class="col-lg-8 col-md-8 col-8">
                    <a href="index.jsp">
                        <img src="./assets/images/logo/imagenes_logos/logo_fondos_oscuros.png" class="logo imag-fluid" />
                      </a>
                </div>
                <div class="col-lg-2 col-md-2 col-2">
                    <!--AQUI IBA EL CARRITO PERO SE QUITO-->
                </div>
            </div>
        </div>
    </header>

    <div class="fondo">
        <div class="container">
            <div class="row">
                <div class="col-xl-4">

                    </div>

                    <div class="col-xl-4">
                        <div class="text-center">
                            <div class="card" style="width: 18rem;">
                                <div class="card-body">
                                    <div class="icono">
                                        <i class="fa-solid fa-circle-user fa-5x"></i>
                                    </div>
                                    <div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1" class="labels pb-2">Correo electrónico</label>
                                            <input type="email" class="form-control" id="exampleInputEmail1"
                                                aria-describedby="emailHelp" placeholder="Ingresa tu correo electrónico">
                                        </div>
                                        <div class="espaciado"></div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1"  class="labels pb-2">Contraseña</label>
                                            <input type="password" class="form-control" id="exampleInputPassword1"
                                                placeholder="Ingresa tu contraseña">
                                        </div>
                                        <div class="espaciado"></div>
                                        <div class="d-grid gap-2">
                                            <button type="submit" class="btn btn-secondary">Ingresar</button>
                                        </div>
                                        <div class="espaciado"></div>
                                        <hr>
                                        <p class="text-center">¿No Tienes Una Cuenta?</p>
                                        <a href="#" id="signin">Crea Una</a>
                                    </form>
                                </div>
                              </div>
                    </div>
                    <div class="col-xl-4">

                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="./assets/js/js_paginas/bebidas.js"></script>
    <script type="text/javascript" src="./assets/js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="./assets/js/jquery.flexslider.js"></script>
    <script type="text/javascript" src="./assets/js/script.js"></script>
    <script type="text/javascript" src="./assets/js/bootstrap.bundle.js"></script>
</body>

</html>


