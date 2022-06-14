using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;
using Entidades;

namespace Negocio
{
    public class NegocioPresupuesto
    {

     


        public bool agregarPresupuesto(string alias, string telefono_fijo, string localidad, string email, string consulta)
        {
            int cant_flias = 0;
            Presupuestos pres = new Presupuestos();
            pres.set_alias(alias);
            pres.set_telefono(telefono_fijo);
            pres.set_localidad(localidad);
            pres.set_email(email);
            pres.set_consulta(consulta);

            
            DaoPresupuestos dao = new DaoPresupuestos();
            cant_flias = dao.agregarPresupuesto(pres);
            if(cant_flias == 1) { return true; }
            else return false;
        }

    }
}
