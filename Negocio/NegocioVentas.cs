using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Dao;
using System.Data;


namespace Negocio
{

    public class NegocioVentas
    {
        AccesoDatos daoDA = new AccesoDatos();
        DaoVentas daoven = new DaoVentas();

        public String negGetcadena() {
            return daoDA.getCadenaConexion();
        }

        public DataTable NegGetTablaventas() {
         return  daoven.getTablaVentas();
        }

    }
}
