<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.Negocio, modelo.Especialidad"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body style="padding-top: 100px">
        <%
            Negocio obj=new Negocio();
        %>
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
        
        <div class="container">
            <div class="row ">
                <div class="col-12">
                    <h1 class="h3">Consultas medicas</h1>
                </div>
            </div>
            <div class='row mt-2'>
                <%
                    for(Especialidad x:obj.lisEsp()){
                        out.print("<div class='col-4 mt-2'>"
                        + "<h2 class='h4'>"+x.getNombreEsp()+"</h2>"
                        + "<div><img src='../../img/specialty/"+x.getNombreEsp()+".jpg'>"
                                + "<p class='mt-2 h5'>Precio: "+x.getPrecioEsp()+"</p></div>"
                        + "<div>");
                        
                %>
                <a class="btn btn-primary" href="../../control?opc=3&cod=<%=x.getCodEsp()%>&nomE=<%=x.getNombreEsp()%>">Ver</a>
                </div></div>
                <%
                    
                    }
                %>
            </div>
        </div>
    </body>
</html>
