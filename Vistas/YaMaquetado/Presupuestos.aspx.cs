using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas.YaMaquetado
{
    public partial class Presupuestos : System.Web.UI.Page
    { 
       NegocioPresupuesto neg = new NegocioPresupuesto();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click1(object sender, EventArgs e)
        {
            bool estado = false;
            estado = neg.agregarPresupuesto(txtAlias.Text , txtTelefono.Text , txtLocalidad.Text, txtMail.Text ,txtConsulta.Text);
        }
    }
}