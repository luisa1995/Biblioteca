using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Datos
{
    public  class librosDao
    {
        DataClasses1DataContext contexto = new DataClasses1DataContext(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConexionLocal"].ConnectionString);

        public List<Libros> obtenerDatos()
        {
            List<Libros> lista = new List<Libros>();

            var consulta = contexto.obtenerlibros();

            foreach (var item in consulta)
            {
                Libros libros = new Libros();
                libros.Id = item.id;
                libros.Titulo = item.titulo;
                libros.Years = item.years;
                libros.NoPaginas = item.noPaginas;
                libros.Identificacion = item.identificacion;
                lista.Add(libros);
            }
            return lista;
        }

        public void InsertarDatos(Libros libros)
        {
            var consulta = contexto.insertalibros(libros.Titulo,
                libros.Years, libros.NoPaginas, libros.Identificacion);
        }

        public void ActualizarDatos(Libros libro)
        {
            var consulta = contexto.cambiarlibros(libro.Id, libro.Identificacion,
                libro.Years, libro.NoPaginas, libro.Identificacion);
        }
    }
}
