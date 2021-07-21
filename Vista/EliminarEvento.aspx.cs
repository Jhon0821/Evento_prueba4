using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;


namespace Vista
{
    public partial class EliminarEvento : System.Web.UI.Page
    {

     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlevento.DataSource = new EventoBan().Listar();
                ddlevento.DataBind();
            }
            
        }

        protected void eliminar_click(object sender, EventArgs e)
        {
            try
            {
                string nombre_contacto = ddlevento.SelectedValue.Split('.')[0];
                EventoBan evento = new EventoBan().Buscarnombre(nombre_contacto);

                if (evento.Elimininar())
                {

                    lblmensaje.Text = "Se elimino el Evento seleccionado"; lblmensaje.ForeColor = System.Drawing.Color.Green;
                    ddlevento.DataSource = null;
                    ddlevento.DataSource = new EventoBan().Listar();
                    ddlevento.DataBind();
                }
                else
                {
                    lblmensaje.Text = "Error al eliminar el Evento Intente Mas tarde..!!"; lblmensaje.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch
            {

            }
        }
       
    }
}