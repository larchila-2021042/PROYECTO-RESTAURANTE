<%-- 
    Document   : bebidas
    Created on : Sep 2, 2022, 2:45:51 PM
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
    <link rel="stylesheet" type="text/css" href="./assets/css/hoja-estilo-menus.css" />
    <script src="./assets/js/fonticon.js" def></script>
</head>

<body>
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-2">
                    <a href="login.html">
                        <i class="fa-solid fa-bars fa-2x settings"></i>
                    </a>
                </div>
                <div class="col-lg-8 col-md-8 col-8">
                    <a href="index.html">
                        <img src="./assets/images/logo/imagenes_logos/logo_fondos_oscuros.png" class="logo imag-fluid" />
                      </a>
                </div>
                <div class="col-lg-2 col-md-2 col-2">
                    <a href="carrito.html">
                        <i class="fa-solid fa-cart-shopping fa-2x carrito"></i>
                    </a>

                </div>
            </div>
        </div>
    </header>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <img src="./assets/images/logo/imagenes_logos/logo_transparente_fondos_claros.png"
                class="logo_nav">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item padding-items-navbar">
                        <a class="nav-link active" aria-current="page" href="index.html">Inicio</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            Menú
                        </a>
                        <ul class="dropdown-menu menu" aria-labelledby="navbarScrollingDropdown">
                            <li><a class="dropdown-item" href="desayunos.html">Desayunos</a></li>
                            <li><a class="dropdown-item" href="almuerzos.html">Almuerzos</a></li>
                            <li><a class="dropdown-item" href="cenas.html">Cena</a></li>
                            <li><a class="dropdown-item" href="postres.html">Postres</a></li>
                            <li><a class="dropdown-item" href="bebidas.html">Bebidas</a></li>
                            <li><a class="dropdown-item" href="platillos.html">Platillos</a></li>
                            <li><a class="dropdown-item" href="ofertas.html">Ofertas</a></li>
                        </ul>
                    </li>
                    <li class="nav-item padding-items-navbar">
                        <a class="nav-link" href="acercaDe.html">Acerca de Nosotros</a>
                    </li>
                    <li class="nav-item padding-items-navbar">
                        <a class="nav-link" href="sedes.html">Sedes</a>
                    </li>
                    <li class="nav-item padding-items-navbar">
                        <a class="nav-link " href="#">Contáctanos</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Buscar..." aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Buscar</button>
                </form>
            </div>
        </div>
    </nav>

    <div class="center">   
            <img src="assets/images/banners/bebidas.png" class="img-fluid" alt="...">
    </div>

    <div class="container container-menu-cards">
        <div class="row ">
            <div class="col-md-12 col-sm-12 col-12 upbar">
                <hr class="lineas-separacion">
                    <button type="button" class="btn btn-color">Desayunos</button>
                    <button type="button" class="btn btn-color">Almuerzos</button>
                    <button type="button" class="btn btn-color">Cenas</button>
                    <button type="button" class="btn btn-color">Postres</button>
                    <button type="button" class="btn btn-color">Platillos</button>
                    <button type="button" class="btn btn-color">Bebidas</button>
                    <button type="button" class="btn btn-color">Descuentos</button>
                <hr class="lineas-separacion">
            </div>
        </div>
        <!--Otra fila-->
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class=" col-12 col-md-6 col-lg-6 col-xl-3">
                <div class="card card-inicio" style="width: 18rem;">
                    <img src="./assets/images/bebidas/coca-cola-disminuido-2.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Coca-Cola</h5>
                        <p class="card-text">Disfrute de una refrescante gaseosa Coca-Cola a tan solo 5.99.</p>
                        <button class="my-button botonResta">-</button>
                        <input type="text" id="mostrador">                        
                        <button class="my-button botonSuma">+</button>
                            <a href="#" class="btn btn-primary btn-anadir-carrito">Añadir al carrito</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-6 col-xl-3 ">
                <div class="card" style="width: 18rem;">
                    <img src="./assets/images/bebidas/coca-cola-disminuido-2.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Coca-Cola</h5>
                        <p class="card-text">Disfrute de una refrescante gaseosa Coca-Cola a tan solo 5.99.</p>
                        <button class="my-button botonResta">-</button>
                        <input type="text" id="mostrador">                        
                        <button class="my-button botonSuma">+</button>
                            <a href="#" class="btn btn-primary btn-anadir-carrito">Añadir al carrito</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-6 col-xl-3">
                <div class="card" style="width: 18rem;">
                    <img src="./assets/images/bebidas/coca-cola-disminuido-2.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Coca-Cola</h5>
                        <p class="card-text">Disfrute de una refrescante gaseosa Coca-Cola a tan solo 5.99.</p>
                        <button class="my-button botonResta">-</button>
                        <input type="text" id="mostrador">                        
                        <button class="my-button botonSuma">+</button>
                            <a href="#" class="btn btn-primary btn-anadir-carrito">Añadir al carrito</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-6 col-xl-3">
                <div class="card" style="width: 18rem;">
                    <img src="./assets/images/bebidas/coca-cola-disminuido-2.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Coca-Cola</h5>
                        <p class="card-text">Disfrute de una refrescante gaseosa Coca-Cola a tan solo 5.99.</p>
                        <button class="my-button botonResta">-</button>
                        <input type="text" id="mostrador">                        
                        <button class="my-button botonSuma">+</button>
                            <a href="#" class="btn btn-primary btn-anadir-carrito">Añadir al carrito</a>
                    </div>
                </div>
            </div>
          </div>
          <!--Otra fila-->
          <div class="row row-cols-1 row-cols-md-6 g-4">
            <div class="col-12 col-md-6 col-lg-6 col-xl-3">
                <div class="card" style="width: 18rem;">
                    <img src="./assets/images/bebidas/coca-cola-disminuido-2.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Coca-Cola</h5>
                        <p class="card-text">Disfrute de una refrescante gaseosa Coca-Cola a tan solo 5.99.</p>
                        <button class="my-button botonResta">-</button>
                        <input type="text" id="mostrador">                        
                        <button class="my-button botonSuma">+</button>
                            <a href="#" class="btn btn-primary btn-anadir-carrito">Añadir al carrito</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-6 col-xl-3">
                <div class="card" style="width: 18rem;">
                    <img src="./assets/images/bebidas/coca-cola-disminuido-2.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Coca-Cola</h5>
                        <p class="card-text">Disfrute de una refrescante gaseosa Coca-Cola a tan solo 5.99.</p>
                        <button class="my-button botonResta">-</button>
                        <input type="text" id="mostrador">                        
                        <button class="my-button botonSuma">+</button>
                            <a href="#" class="btn btn-primary btn-anadir-carrito">Añadir al carrito</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-6 col-xl-3">
                <div class="card" style="width: 18rem;">
                    <img src="./assets/images/bebidas/coca-cola-disminuido-2.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Coca-Cola</h5>
                        <p class="card-text">Disfrute de una refrescante gaseosa Coca-Cola a tan solo 5.99.</p>
                        <button class="my-button botonResta">-</button>
                        <input type="text" id="mostrador">                        
                        <button class="my-button botonSuma">+</button>
                            <a href="#" class="btn btn-primary btn-anadir-carrito">Añadir al carrito</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-6 col-xl-3">
                <div class="card" style="width: 18rem;">
                    <img src="./assets/images/bebidas/coca-cola-disminuido-2.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Coca-Cola</h5>
                        <p class="card-text">Disfrute de una refrescante gaseosa Coca-Cola a tan solo 5.99.</p>
                        <button class="my-button botonResta">-</button>
                        <input type="text" id="mostrador">                        
                        <button class="my-button botonSuma">+</button>
                            <a href="#" class="btn btn-primary btn-anadir-carrito">Añadir al carrito</a>
                    </div>
                </div>
            </div>
          </div>
          <!--Otra fila-->
          <div class="row row-cols-1 row-cols-md-6 g-4">
            <div class="col-12 col-md-6 col-lg-6 col-xl-3">
                <div class="card" style="width: 18rem;">
                    <img src="./assets/images/bebidas/coca-cola-disminuido-2.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Coca-Cola</h5>
                        <p class="card-text">Disfrute de una refrescante gaseosa Coca-Cola a tan solo 5.99.</p>
                        <button class="my-button botonResta">-</button>
                        <input type="text" id="mostrador">                        
                        <button class="my-button botonSuma">+</button>
                            <a href="#" class="btn btn-primary btn-anadir-carrito">Añadir al carrito</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-6 col-xl-3">
                <div class="card" style="width: 18rem;">
                    <img src="./assets/images/bebidas/coca-cola-disminuido-2.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Coca-Cola</h5>
                        <p class="card-text">Disfrute de una refrescante gaseosa Coca-Cola a tan solo 5.99.</p>
                        <button class="my-button botonResta">-</button>
                        <input type="text" id="mostrador">                        
                        <button class="my-button botonSuma">+</button>
                            <a href="#" class="btn btn-primary btn-anadir-carrito">Añadir al carrito</a>
                    </div>
                </div>
            </div>
          </div>
    </div>
    

    <footer>
        <div class="container pie-de-pagina">
            <table class="table">
                <thead>
                    <tr>
                        <td scope="col"><a href="index.html" class="links-deactivated">Inicio</a></th>
                        <td scope="col">¿Quiénes somos?</td>
                        <td scope="col">Contáctanos</td>
                        <td scope="col">Términos y condiciones</td>
                        <td scope="col">Política de privacidad</td>
                    </tr>
            </table>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <p class="copyright">Todos los derechos reservados &copy</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    
    <script type="text/javascript" src="./assets/js/js_paginas/bebidas.js"></script>
    <script type="text/javascript" src="./assets/js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="./assets/js/jquery.flexslider.js"></script>
    <script type="text/javascript" src="./assets/js/script.js"></script>
    <script type="text/javascript" src="./assets/js/bootstrap.bundle.js"></script>
</body>

</html>