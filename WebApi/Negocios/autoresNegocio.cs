using Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocios
{
    public class autoresNegocio
    {

        public List<Autores> obtenerDatos()
        {
            autoresDao autoresDao = new autoresDao();
            return autoresDao.obtenerDatos();
        }


        public void InsertarDatos(Autores autores)
        {
            autoresDao autoresDao = new autoresDao();
            autoresDao.InsertarDatos(autores);
        }

        public void ActualizarDatos(Autores autores)
        {
            autoresDao autoresDao = new autoresDao();
            autoresDao.ActualizarDatos(autores);
        }
    }
}
