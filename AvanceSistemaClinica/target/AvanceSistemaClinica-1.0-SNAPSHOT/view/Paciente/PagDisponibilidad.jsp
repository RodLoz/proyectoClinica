<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.*, java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fechas disponibles</title>
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
                        <li class="nav-item"><a href="view/Paciente/PagEspecialidad.jsp" class="nav-link">Reserva online</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Resultados médicos</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Historial de reservas</a></li>
                        <li class="nav-item"><a href="index.html" class="nav-link">Salir</a></li>
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
        
        <%
            List<Disponibilidad> lista=(ArrayList)request.getAttribute("dato");
            String nomDoctor=(String)request.getAttribute("nomD");
            String nomEsp=(String)request.getAttribute("nomE");
            String codEsp=(String)request.getAttribute("codE");
            %>
        <div class="container">
            <div class="row ">
                <div class="col-4">
                    <h1 class="h3">Dr. <%=nomDoctor%>: <%=nomEsp%></h1>
                </div>
                <div class="col-4">
                    <!--pagDoctorE.jsp?opc=3&cod=<%=codEsp%>&nomE=<%=nomEsp%>-->
                    <a href="control?opc=3&cod=<%=codEsp%>&nomE=<%=nomEsp%>" class="btn btn-primary">
                        Regresar
                    </a>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-12">
                    <h2 class="h3">Lista de fechas disponibles</h2>
                </div>
                <div class="col-12">
                <table class="table table-hover table-striped">
                    <tr class="bg-primary"><th>Fecha de inicio<th>Fecha de fin<th>Turno<th>Ver
                <%
                    for(Disponibilidad x:lista){
                        out.print("<tr><td>"+x.getFechaInicio()+"<td>"+x.getFechaFin()+"<td>"+x.getTurno());
                    
                %>    
                        <td><a class="btn btn-primary">Enviar</a>
                <%
                    }
                    %>
                </table>
                </div>
            </div>
        </div>
    </body>
</html>
