using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Cors;
using System.Web.Http.Description;
using Entidades;
using Negocios;
using WebApi.Models;

namespace WebApi.Controllers
{
    public class LibrosController : ApiController
    {
        private LibrosContext db = new LibrosContext();

        // GET: api/Libros
        [EnableCors(origins: "*", headers: "*", methods: "*")]
        public List<Libros> Get()
        {
            librosNegocio service = new librosNegocio();
            return service.obtenerDatos();
        }        

        // PUT: api/Libros/5
        [EnableCors(origins: "*", headers: "*", methods: "*")]
        public IHttpActionResult Put(int id, Libros libros)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != libros.Id)
            {
                return BadRequest();
            }
            

            try
            {
                librosNegocio service = new librosNegocio();
                service.ActualizarDatos(libros);
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!LibrosExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Libros
        [EnableCors(origins: "*", headers: "*", methods: "*")]
        public  IHttpActionResult Post(Libros libros)
        {
            librosNegocio service = new librosNegocio();
            if (libros.Id <= 0)
            {
                service.InsertarDatos(libros);
            }
            return Ok(libros);
        }

       
        private bool LibrosExists(int id)
        {
            return db.Libros.Count(e => e.Id == id) > 0;
        }
    }
}