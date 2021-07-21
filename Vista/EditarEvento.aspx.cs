using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Vista
{
    public partial class EditarEvento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                DropDownList1.DataSource = new EventoBan().Listar();
                DropDownList1.DataBind();
            }
        }
        protected void seleccionar_click(object sender, EventArgs e)
        {


            string  nombre = DropDownList1.ToString();
            EventoBan evento = new EventoBan().Buscarnombre(nombre);
                txtidevento.Text = evento.Id_evento.ToString();
            txtnombreeve.Text = evento.Nombre_contacto;
              
               
           

            
          

       

        }
        protected void btn_Actualizar(object sender, EventArgs e)
        {
            EventoBan evento = new EventoBan(int.Parse(txtidevento.Text), txtnombreeve.Text, txtdireccion.Text, txtEmail.Text,txttelefono.Text, DateTime.Parse(txtfecha.Text),int.Parse(txtcantidad.Text));
            if (evento.Actualizar())
            {
                lbmensaje.Text = "Se ha actualizado El evento";
                lbmensaje.ForeColor = System.Drawing.Color.Green;

                DropDownList1.DataSource = null;
                DropDownList1.DataSource = new EventoBan().Listar();
                DropDownList1.DataBind();

                txtidevento.Text = string.Empty;
                txtnombreeve.Text = string.Empty;
                txtdireccion.Text = string.Empty;
                txttelefono.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtnombreeve.Text = string.Empty;
                txtcantidad.Text= string.Empty;
            }
            else
            {
                lbmensaje.Text = "ha ocurrido un problema al actualizar la región";
                lbmensaje.ForeColor = System.Drawing.Color.Red;
            }
        }

     
    }
}