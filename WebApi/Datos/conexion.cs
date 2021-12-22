using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class conexion
    {
        public SqlConnection cnn;
        public SqlCommand cmd = new SqlCommand();

        public SqlConnection conecta()
        {
            try
            {
                cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConexionLocal"].ToString());
                cnn.Open();
                return cnn;
            }
            catch (Exception ex)
            {
                throw;
            }

        }
    }
}
