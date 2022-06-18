using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.YaMaquetado
{

    //rellenar las grid view con un metodo para cargar listas enviando desde el negocio al dao "listas de productos llevando el query y el dao consultando
    //y devuelve un data set o un table y negocio devuelve a vistas

    public partial class Productoss : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListView1.Visible = true;
            ListView2.Visible = false;
        }


        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //Boton buscar
            //si se busca volver a mostrar la tabla original que trae todos los datos. 
       
            if (txtProductos.Text == "")
            {
                ListView1.Visible = true;
                ListView2.Visible = false;
            }
            else ListView1.Visible = false;
            ListView2.Visible = true;
            //tengo que tomar la busqueda y enviarla a negocio y de negocio a dao y traer devuelta todo.

            //SELECT [Stock], [PU_Pro], [Descripcion], [url], [Categoria] FROM [Productos] where  [Estado] = 'True'



            //sqlDataSource1.SelectCommand = "SELECT [Stock], [PU_Pro], [Descripcion], " +
            //  "[url], [Categoria] FROM [Productos] where Estado = 1 and Descripcion like '%lad%';


            // SE NECESITA ADAPTAR LA SIGUIENTE CONSULTA SELECT [Stock], [PU_Pro], [Descripcion], [url], [Categoria] FROM [Productos] where  [Estado] = 'True' and Descripcion like '%rev%'
            // REV TIENE QUE SER EL TEXTO INGRESADO EN EL TXTBUSCAR.
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}