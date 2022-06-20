using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;


namespace Dao
{
    public class DaoVentas
    {

        AccesoDatos ds = new AccesoDatos();


        public DataTable getTablaVentas()
        {
            // List<Producto> lista = new List<Producto>();
            DataTable tabla = ds.ObtenerTabla("Ventas", "Select * from Ventas ");
            return tabla;
        }

    }
}
