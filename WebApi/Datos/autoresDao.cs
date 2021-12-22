using System;
using Entidades;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Datos
{
    public class autoresDao
    {
        DataClasses1DataContext contexto = new DataClasses1DataContext(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConexionLocal"].ConnectionString);

        public List<Autores> obtenerDatos()
        {
            List<Autores> lista = new List<Autores>();

            var consulta = contexto.obtenerautores();

            foreach (var item in consulta)
            {
                Autores autores = new Autores();
                autores.Id = item.id;
                autores.NombreCompleto = item.nombreCompleto;
                autores.Identificacion = item.identificacion;
                autores.FechaNacimiento = item.fechaNacimiento;
                autores.Ciudad = item.ciudad;
                autores.Email = item.email;
                lista.Add(autores);
            }
            return lista;
        }

        public void InsertarDatos(Autores autores)
        {
            var consulta = contexto.insertaautores(autores.Identificacion, 
                autores.NombreCompleto, autores.FechaNacimiento, autores.Ciudad, autores.Email);
        }

        public void ActualizarDatos(Autores autores)
        {
            var consulta = contexto.cambiarautores(autores.Id, autores.Identificacion,
                autores.NombreCompleto, autores.FechaNacimiento, autores.Ciudad, autores.Email);
        }

    }
}
