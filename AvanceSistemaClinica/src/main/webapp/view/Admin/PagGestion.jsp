<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body style="padding-top: 100px">
        <!--Inicio navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
            <div class="container">
                <!--Logotipo-->
            <a class="navbar-brand" href="#">MediLan</a>
                <!--Menú de navegación-->
                <div class="collpase navbar-collapse" id="menu">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a href="pagGestionDocs.jsp" class="nav-link">Gestionar doctores</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Gestionar pacientes</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Gráficos</a></li>
                        <li class="nav-item"><a href="../../index.html" class="nav-link">Salir</a></li>
                    </ul>
                </div>
                <!--Formulario de busqueda-->
                <form action="" class="d-flex">
                    <input type="search" class="form-control me-2"
                           placeholder="Buscar">
                    <button class="btn btn-outline-light"
                            type="button">Buscar</button>
                </form>
            </div>
        </nav>    
        <!--Fin navbar-->
        
        <div class="container">
            <div class="row ">
                    <div class="col-12">
                    <h1 class="h3">Opciones de gestión</h1>
                </div>
            </div>
            <div class="row mt-4"></div>
            <div class="row mt-4">
                <div class="col-4">
                    <h2 class="h4">Gestionar doctores</h2>
                    <div>
                        <img src="../../img/menu/GestiónDoctores.jpg">
                    </div>
                    <div class="mt-4">
                        <a href="pagGestionDocs.jsp"> <button class="btn btn-primary">Ver</button></a>
                    </div>
                </div>
                <div class="col-4">
                    <h2 class="h4">Gestionar pacientes</h2>
                    <div>
                        <img src="../../img/menu/GestiónMedicamentos.jpg">
                    </div>
                    <div class="mt-4">
                        <button class="btn btn-primary">Ver</button>
                    </div>
                </div>
                <div class="col-4">
                    <h2 class="h4">Gráficos</h2>
                    <div>
                        <img src="../../img/menu/Gráficos.jpg">
                    </div>
                    <div class="mt-4">
                        <button class="btn btn-primary">Ver</button>
                    </div>
                </div>
            </div>
        </div>        
    </body>
</html>
