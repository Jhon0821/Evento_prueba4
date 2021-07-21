using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Vista
{
    public partial class AgregarEvento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                EventoBan eve = new EventoBan(0, txtNombre.Text, txtdireccion.Text, txtemail.Text, txttelefono.Text, DateTime.Parse(txtFecha.Text), int.Parse(txtcantidad.Text));

                if (eve.Ingresar())
                {
                    lbmensaje.Text = "Se ingreso El Evento con exito";
                    lbmensaje.ForeColor = System.Drawing.Color.Green;
                }

            }
            catch(Exception ex) { 


                string error = ex.Message;

            }
        }
    }
}