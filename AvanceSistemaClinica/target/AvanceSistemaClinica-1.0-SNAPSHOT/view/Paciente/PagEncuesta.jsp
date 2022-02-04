<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Encuesta de sastifacción</title>
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
                        <li class="nav-item"><a href="../Paciente/PagEspecialidad.jsp" class="nav-link">Reserva online</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Resultados médicos</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Historial de reservas</a></li>
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
        <form action="" method="post">
            <div class="container">
                <div class="row">
                        <div class="col-12 mb-4">
                            <h2 class="h4">Encuesta de satisfacción</h2>
                        </div>
                        <div class="col-12 mb-4">
                            <h2 class="h4">
                                1. ¿Qué tan sastifecho te encuentras con nuestro servicio de reserva online? *
                            </h2>
                        </div>
                    <div class="col-2">
                        <input type="radio" name="rb" value="Muy insastifecho">Muy insastifecho
                    </div>
                    <div class="col-2">
                        <input type="radio" name="rb" value="Insastifecho">Insastifecho
                    </div>
                    <div class="col-2">
                        <input type="radio" name="rb" value="Regular">Regular
                    </div>
                    <div class="col-2">
                        <input type="radio" name="rb" value="Sastifecho">Sastifecho
                    </div>
                    <div class="col-2">
                        <input type="radio" name="rb" value="Muy sastifecho">Muy sastifecho
                    </div>
                </div>
                <div class="row-12 mt-4">
                    <div class="col-12 mb-4">
                        <h2 class="h4">
                           2. ¿Cómo valoraría nuestro servicio? *
                        </h2>
                    </div>
                    <div class="col-12">
                        <h2 class="h5">
                           Valore de 1 al 10
                        </h2>
                    </div>
                    <div class="col-4">
                        <input class="form-control" type="number" name="valor" max="10" min="1" placeholder="Escriba el valor">
                    </div>
                </div>
                <div class="row-12 mt-4">
                    <div class="col-12 mb-4">
                        <h2 class="h4">
                           3. Comentario (Opcional)
                        </h2>
                    </div>
                    <div class="col-4 mb-4">
                        <textarea class="form-control" placeholder="Escriba su comentario .."></textarea>
                    </div>
                </div>
                <div class="row-12 mt-4">
                    <div class="col-6">
                        <input type="submit" class="btn btn-primary btn-block" value="Enviar">
                    </div>
                </div>
            </div>
        </form>

    </body>
</html>

