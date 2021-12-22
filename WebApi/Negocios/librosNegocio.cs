using Datos;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocios
{
    public class librosNegocio
    {
        public List<Libros> obtenerDatos()
        {
            librosDao librosDao = new librosDao();
            return librosDao.obtenerDatos();
        }

        public void InsertarDatos(Libros libros)
        {
            librosDao librosDao = new librosDao();
            librosDao.InsertarDatos(libros);
        }

        public void ActualizarDatos(Libros libros)
        {
            librosDao librosDao = new librosDao();
            librosDao.ActualizarDatos(libros);
        }

    }
}
