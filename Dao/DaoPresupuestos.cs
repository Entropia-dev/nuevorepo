using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entidades;

namespace Dao
{
    public class DaoPresupuestos
    {
        AccesoDatos ds = new AccesoDatos();

        private void ArmarParametrosPrepuestoAgregar(ref SqlCommand Comando,Presupuestos pre)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add(" @alias ", SqlDbType.VarChar);
            SqlParametros.Value = pre.get_alias();
            SqlParametros = Comando.Parameters.Add(" @telefono ", SqlDbType.VarChar);
            SqlParametros.Value = pre.get_telefono();
            SqlParametros = Comando.Parameters.Add(" @localidad ", SqlDbType.VarChar);
            SqlParametros.Value = pre.get_Localidad();
            SqlParametros = Comando.Parameters.Add(" @email ", SqlDbType.VarChar);
            SqlParametros.Value = pre.get_email();
            SqlParametros = Comando.Parameters.Add(" @consulta ", SqlDbType.VarChar);
            SqlParametros.Value = pre.get_consulta();
        }


        public int agregarPresupuesto(Presupuestos pre)
        {

            // pro.get_email_cuenta(ds.ObtenerMaximo("SELECT max(idProducto) FROM Producto") + 1);
            SqlCommand comando = new SqlCommand();
            ArmarParametrosPrepuestoAgregar(ref comando, pre);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spinsertarConsulta");
        }

    }
}
