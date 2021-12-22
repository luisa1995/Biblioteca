using Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Libros
    {
        public int Id { get; set; }
        public string Titulo { get; set; }
        public string Years { get; set; }
        public short NoPaginas { get; set; }
        public string Identificacion { get; set; }
        public Autores autores { get; set; }
    }
}
