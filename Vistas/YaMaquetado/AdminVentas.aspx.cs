using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data.SqlClient;

namespace Vistas.YaMaquetado
{

    public partial class AdminVentas : System.Web.UI.Page
    {
 
        NegocioVentas nven = new NegocioVentas();
        protected void Page_Load(object sender, EventArgs e)
        {
          
        
            grdventas2.DataSource = nven.NegGetTablaventas();
            grdventas2.DataBind();
            //acá tengo que traer la consulta del negocio. 

        }
    }
}