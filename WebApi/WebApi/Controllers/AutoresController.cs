
using Datos;
using Kendo.DynamicLinq;
using Negocios;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using System.Web.Http.Cors;
using System.Web.Mvc;

namespace WebApi.Controllers
{
    public class AutoresController : ApiController
    {
        // GET: api/Autores
        [EnableCors(origins: "*", headers: "*", methods: "*")]
        public List<Autores> Get()
        {
            autoresNegocio service = new autoresNegocio();
            return service.obtenerDatos();
        }
      
        // GET: api/Autores/5
        public IHttpActionResult Get(int id)
        {
            return Ok();
        }

        // POST: api/Autores
        [EnableCors(origins: "*", headers: "*", methods: "*")]
        public IHttpActionResult Post(Autores autores)
        {
            autoresNegocio service = new autoresNegocio();
            if (autores.Id <=0)
            {
                service.InsertarDatos(autores);
            }
            return Ok(autores);
        }
    }
}
