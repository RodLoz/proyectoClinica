package miServlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.*;
import dao.Negocio;

public class control extends HttpServlet {

    Negocio obj = new Negocio();
    Usuario u = new Usuario();
    Administrador ad = new Administrador();
    Paciente pa = new Paciente();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int op = Integer.parseInt(request.getParameter("opc"));
        if (op == 1) {
            ValidarUser(request, response);
        }
        if (op == 2) {
            CrearUser(request, response);
        }
        //Paciente: ver doctores disponibles
        if (op == 3) {
            lisDocE(request, response);
        }
        //Paciente: ver fechas disponibles
        if (op == 4) {
            LisDisponibilidad(request, response);
        }
        
    }

    protected void ValidarUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            //Reuperar datos del formulario registro
            if (request.getParameter("Envia") != null) {
                int respuesta = 0;
                String dni = request.getParameter("dni");
                String contrasena = request.getParameter("password");
                String cargo = request.getParameter("cb");
                u.setDni(dni);
                u.setContrasena(contrasena);
                u.setCargo(cargo);
                try {
                    respuesta = obj.ValidarUsuario(u);
                } catch (Exception e) {
                }
                if (respuesta != 0 && "Paciente".equals(u.getCargo())) {
                    response.sendRedirect("view/Paciente/PagEspecialidad.jsp");
                } else if (respuesta != 0 && "Administrador".equals(u.getCargo())) {
                    response.sendRedirect("view/Admin/PagGestion.jsp");
                } else {
                    response.sendRedirect("index.html");
                }
            }
        }
    }

    protected void CrearUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            //Reuperar datos del formulario registro
            if (request.getParameter("Envia") != null) {
                int respuesta = 0;
                int res = 0;
                String rs;
//                String rp="";
                String nombre = request.getParameter("nom");
                String apellido = request.getParameter("apellido");
                String telefono = request.getParameter("telf");
                String dni = request.getParameter("dni");
                String correo = request.getParameter("correo");
                String contrasena = request.getParameter("pass");
                String cargo = request.getParameter("cb");
                u.setNombre(nombre);
                u.setApellido(apellido);
                u.setTelefono(telefono);
                u.setDni(dni);
                u.setCorreo(correo);
                u.setContrasena(contrasena);
                u.setCargo(cargo);
                res = obj.ValidarDni(u);
                try {
                    if (res == 0) {
                        respuesta = obj.AdicionarUsuario(u);
                    } else {
                        respuesta = 0;
                    }
                } catch (Exception e) {
                }
                if (respuesta != 0 && "Paciente".equals(u.getCargo())) {
                    //Buscar si cuenta con historial clinico
                    pa.setNombre(nombre);
                    pa.setApellido(apellido);
                    pa.setTelefono(telefono);
                    pa.setDni(dni);
                    pa.setCorreo(correo);
                    pa.setContrasena(contrasena);
//                    rs=obj.BusCodUsuario(dni);
//                    u.setCodUsuario(rs);
//                    obj.BusCodHistorial(rs);
//                    rp=obj.BusCodHistorial(rs);
//                    rp="H0012";    
//                    pa.setCodHistorial(rp);
//                    obj.AdicionarHistorial(hi,u);
                    obj.AdicionarPaciente(pa);
                    response.sendRedirect("index.html");
                } else if (respuesta != 0 && "Administrador".equals(u.getCargo())) {
                    ad.setNombre(nombre);
                    ad.setApellido(apellido);
                    ad.setTelefono(telefono);
                    ad.setDni(dni);
                    ad.setCorreo(correo);
                    ad.setContrasena(contrasena);
                    obj.AdicionarAdministrador(ad);
                    response.sendRedirect("index.html");
                } else {
                    response.sendRedirect("view/User/Registro.jsp");
                }
            }
        }
    }

    protected void lisDocE(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("cod");
        String nombre = request.getParameter("nomE");
        request.setAttribute("dato", obj.lisDocE(code));
        request.setAttribute("nomE", nombre);
        request.setAttribute("codEsp", code);
        request.getRequestDispatcher("view/Paciente/pagDoctorE.jsp").forward(request, response);
    }
    
    protected void LisDisponibilidad(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String codE=request.getParameter("cod");
        String codD=request.getParameter("codDoctor");
        String nomDoctor=request.getParameter("nomDoctor");
        String nomEsp=request.getParameter("nomEsp");
        request.setAttribute("dato", obj.lisDisponibilidad(codE, codD));
        request.setAttribute("nomD", nomDoctor);
        request.setAttribute("nomE", nomEsp);
        request.setAttribute("codE", codE);
        request.getRequestDispatcher("view/Paciente/PagDisponibilidad.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
