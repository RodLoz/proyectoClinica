package dao;

import util.MySQLConexion;
import java.util.*;
import modelo.*;
import java.sql.*;

public class Negocio {

    //Login: Validar Usuario
    public int ValidarUsuario(Usuario us) {
        int respuesta = 0;
        try {
            Connection cn = MySQLConexion.getConexion();
            String sql = "SELECT COUNT(u.Cod_Usuario) as cantidad FROM usuario u WHERE u.Dni=? and u.Contrasena=? and u.Cargo=?;";
            PreparedStatement st = cn.prepareStatement(sql);
            st.setString(1, us.getDni());
            st.setString(2, us.getContrasena());
            st.setString(3, us.getCargo());
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                respuesta = rs.getInt("cantidad");
            }
        } catch (Exception e) {
        }
        return respuesta;
    }

    //Crear usuario
    public int AdicionarUsuario(Usuario us) {
        int respuesta = 0;
        int contador = 0;
        try {
            Connection cn = MySQLConexion.getConexion();
            String sql = "call SP_ADI_USUARIO(?,?,?,?,?,?,?);";
            //prepara una instrución para ejecutar el sql
            PreparedStatement st = cn.prepareStatement(sql);
            //Obtener todo el listado
            st.setString(1, us.getDni());
            st.setString(2, us.getNombre());
            st.setString(3, us.getApellido());
            st.setString(4, us.getTelefono());
            st.setString(5, us.getCorreo());
            st.setString(6, us.getCargo());
            st.setString(7, us.getContrasena());
            //Mandas a ejecutar
            respuesta = st.executeUpdate();
            contador = 1;
        } catch (Exception ex) {
            //para los errores
            contador = 0;
        }
        return respuesta = contador;
    }

    //Validar por DNI
    public int ValidarDni(Usuario us) {
        int respuesta = 0;
        try {
            Connection cn = MySQLConexion.getConexion();
            String sql = "SELECT COUNT(u.Cod_Usuario)as Cuenta FROM usuario u WHERE u.Dni=?";
            PreparedStatement st = cn.prepareStatement(sql);
            st.setString(1, us.getDni());
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                respuesta = rs.getInt("Cuenta");
            }
        } catch (Exception e) {
        }
        return respuesta;
    }

    //Validar Usuario
    public int ValidarPaciente(Usuario us) {
        int respuesta = 0;
        try {
            Connection cn = MySQLConexion.getConexion();
            String sql = "SELECT COUNT(u.Cod_Usuario) as cantidad FROM usuario u WHERE u.Dni=? and u.Contrasena=? and u.Cargo=?;";
            PreparedStatement st = cn.prepareStatement(sql);
            st.setString(1, us.getDni());
            st.setString(2, us.getContrasena());
            st.setString(3, us.getCargo());
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                respuesta = rs.getInt("cantidad");
            }
        } catch (Exception e) {
        }
        return respuesta;
    }

    //Se busca el código de historial
    public String BusCodHistorial(String id) {
        String respuesta = "";
        try {
            Connection cn = MySQLConexion.getConexion();
            String sql = "SELECT u.Cod_Usuario as Cuenta\n"
                    + "FROM usuario u\n"
                    + "WHERE u.Dni=?";
            PreparedStatement st = cn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Usuario u = new Usuario();
                u.setCodUsuario(rs.getString(1));
                respuesta = rs.getString("Cuenta");
            }
        } catch (Exception e) {
        }
        return respuesta;
    }

    //Crear Administrador
    public void AdicionarAdministrador(Administrador ad) {
        try {
            Connection cn = MySQLConexion.getConexion();
            String sql = "call SP_ADI_ADMINISTRADOR(?,?,?,?,?,?);";
            //prepara una instrución para ejecutar el sql
            PreparedStatement st = cn.prepareStatement(sql);
            //Obtener todo el listado
            st.setString(1, ad.getNombre());
            st.setString(2, ad.getApellido());
            st.setString(3, ad.getTelefono());
            st.setString(4, ad.getDni());
            st.setString(5, ad.getCorreo());
            st.setString(6, ad.getContrasena());
            //Mandas a ejecutar
            st.executeUpdate();
        } catch (Exception ex) {
            //para los errores
        }
    }

    //Crear pacientes
    public void AdicionarPaciente(Paciente pa) {
        try {
            Connection cn = MySQLConexion.getConexion();
            String sql = "call SP_ADI_PACIENTE(?,?,?,?,?,?,?);";
            //prepara una instrución para ejecutar el sql
            PreparedStatement st = cn.prepareStatement(sql);
            //Obtener todo el listado
            st.setString(1, pa.getNombre());
            st.setString(2, pa.getApellido());
            st.setString(3, pa.getTelefono());
            st.setString(4, pa.getDni());
            st.setString(5, pa.getCorreo());
            st.setString(6, pa.getContrasena());
            st.setString(7, pa.getCodHistorial());
            //Mandas a ejecutar
            st.executeUpdate();
        } catch (Exception ex) {
            //para los errores
        }
    }

//     =============== Paciente ===============
    //Listado de las especialidades
    public List<Especialidad> lisEsp() {
        List<Especialidad> lista = new ArrayList<>();
        try {
            Connection cn = MySQLConexion.getConexion();
            String sql = "select Cod_Especialidad,Nombre,Precio from especialidad";
            //prepara una instrución para ejecutar el sql
            PreparedStatement st = cn.prepareStatement(sql);
            //Obtener todo el listado
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Especialidad ep = new Especialidad();
                ep.setCodEsp(rs.getString(1));
                ep.setNombreEsp(rs.getString(2));
                ep.setPrecioEsp(rs.getDouble(3));
                lista.add(ep);
            }
        } catch (Exception ex) {
            //para los errores
            ex.printStackTrace();
        }
        return lista;
    }

    //listado de doctores segun especialdiad
    public List<Doctor> lisDocE(String id) {
        List<Doctor> lista = new ArrayList();
        try {
            Connection cn = MySQLConexion.getConexion();
            String sql = "SELECT Apellido,Nombre,Fecha_Ingreso,Cod_Doctor FROM doctor where Cod_Especialidad=?";
            //preparar una instruccion para ejecutar el sql
            PreparedStatement st = cn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery(); //obtener todo el listado
            while (rs.next()) {
                Doctor d = new Doctor();
                d.setAped(rs.getString(1));
                d.setNomd(rs.getString(2));
                d.setFechai(rs.getString(3));
                d.setCodd(rs.getString(4));
                lista.add(d);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return lista;
    }

    //Obtener el listado de fechas disponibles por parametros
    public List<Disponibilidad> lisDisponibilidad(String idE, String idD) {
        List<Disponibilidad> lista = new ArrayList();
        try {
            Connection cn = MySQLConexion.getConexion();
            String sql = "SELECT dp.Fecha_Inicio,dp.Fecha_Fin,dp.Turno,dp.Estado\n"
                    + "FROM disponibilidad dp JOIN doctor d ON dp.Cod_Disponibilidad=d.Cod_Disponibilidad\n"
                    + "JOIN especialidad e ON e.Cod_Especialidad=d.Cod_Especialidad\n"
                    + "WHERE e.Cod_Especialidad=? AND dp.Cod_Doctor=? AND dp.Estado=0";
            //preparar una instruccion para ejecutar el sql
            PreparedStatement st = cn.prepareStatement(sql);
            st.setString(1, idE);
            st.setString(2, idD);
            ResultSet rs = st.executeQuery();//obtener todo el listado 
            while (rs.next()) {
                Disponibilidad d = new Disponibilidad();
                d.setFechaInicio(rs.getString(1));
                d.setFechaFin(rs.getString(2));
                d.setTurno(rs.getString(3));
                d.setEstado(rs.getInt(4));
                lista.add(d);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return lista;
    }
    
     public List<Doctor> lisBuscDoc(String id) {
        List<Doctor> lista = new ArrayList();
        try {
            Connection cn = MySQLConexion.getConexion();
            String sql = "SELECT d.Nombre, d.Fecha_Ingreso, e.Nombre"
                    + "FROM especialidad e JOIN doctor d ON e.Cod_Especialidad=d.Cod_Especialidad"
                    + "WHERE d.Nombre=?";
            //preparar una instruccion para ejecutar el sql
            PreparedStatement st = cn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery(); //obtener todo el listado
            while (rs.next()) {
                Doctor d = new Doctor();
                d.setNomd(rs.getString(1));
                d.setFechai(rs.getString(2));
                d.setCesp(rs.getString(3));                
                lista.add(d);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return lista;
    }
}
