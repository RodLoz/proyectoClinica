<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GestionDeDoctores</title>
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
            <div class="row">
                    <div class="col-sm-4 cold-md-6">
                        <h4>Gestion de Doctores:</h4>
                    </div>
              <div class="col-sm-3">
                  <a href="PagGestion.jsp"><button class="btn btn-primary">Regresar</button></a>
              </div>
              <div class="col-sm-3">
                  <h5>Agregar nuevo doctor</h5>
              </div>
               <div class="col-sm-2">
                  <button class="btn btn-success">Agregar</button>
              </div>
            </div>
          </div>
        <br><br>            
           <div class="container">
            <div class="row">
                    <div class="col-md-3">
                        <h6>Buscar por doctor:</h6>
                    </div>
              <div class="col-sm-6">
                   <select class="mdb-select md-form">
                        <option value="" disabled selected>Select</option>
                        <option value="1">Option 1</option>
                        <option value="2">Option 2</option>
                        <option value="3">Option 3</option>
                  </select>
              </div>               
                <div class="row mt-4"></div> 
                
                <div class="col-md-3">
                  <h6>Buscar por especialidad</h6>
              </div>
               <div class="col-sm-2">
                   <select class="mdb-select md-form">
                        <option value="" disabled selected>Select</option>
                        <option value="1">Option 1</option>
                        <option value="2">Option 2</option>
                        <option value="3">Option 3</option>
                  </select>
              </div>
            </div>
          </div> 
        <br><br>
        <table class="table table-bordered container" style="text-align:center">
                <thead class="thead-dark" style="color:#edf2f7; background: #367AEA">
                  <tr>
                    <th scope="col">Doctor</th>
                    <th scope="col">Imagen</th>
                    <th scope="col">Fecha de Ingreso</th>
                    <th scope="col">Especialidad</th>
                    <th scope="col">Anular</th>
                    <th scope="col">Modificar</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                  </tr>
                  <tr>
                    <th scope="row">4</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                  </tr>
                  <tr>
                    <th scope="row">5</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                  </tr>
                </tbody>
           </table>
         <!--<td><a href="control?opc=4&cod=<!%=x.getcodigoAlumno()%>"><img src="botones/Edit.gif"></a>
         <td><a href="control?opc=5&cod=<!%=x.getcodigoAlumno()%>"><img src="botones/eliminar.png"></a> -->
        
    </body>
</html>
