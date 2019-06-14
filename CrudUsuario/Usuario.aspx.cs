using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrudUsuario
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnConsultar_Click(object sender, EventArgs e)
        {

        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
                if (txtNombre.Text == "")
                {
                    lblMensaje.Text = "Debe ingresar nombre Usuario";
                    txtNombre.Focus();
                    return;
                }
                if (txtApellido.Text == "")
                {
                    lblMensaje.Text = "Debe ingresar Apellido Usuario";
                    txtApellido.Focus();
                    return;
                }
                if (txtCorreo.Text == "")
                {
                    lblMensaje.Text = "Debe ingresar Email Usuario";
                    txtCorreo.Focus();
                    return;
                }
                if (txtContraseña.Text == "")
                {
                    lblMensaje.Text = "Debe ingresar Contraseña Usuario";
                    txtContraseña.Focus();
                    return;
                }

            lblMensaje.Text = CADUsuario.CADUsu.NuevoCliente(txtNombre.Text, txtApellido.Text, txtCorreo.Text, txtContraseña.Text);
                GVUsuario.DataBind();
            
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtIDUsuario.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtCorreo.Text = "";
            txtContraseña.Text = "";
            

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            if (txtNombre.Text == "")
            {
                lblMensaje.Text = "Debe ingresar nombre Usuario";
                txtNombre.Focus();
                return;
            }
            if (txtApellido.Text == "")
            {
                lblMensaje.Text = "Debe ingresar Apellido Usuario";
                txtApellido.Focus();
                return;
            }
            if (txtCorreo.Text == "")
            {
                lblMensaje.Text = "Debe ingresar Email Usuario";
                txtCorreo.Focus();
                return;
            }
            if (txtContraseña.Text == "")
            {
                lblMensaje.Text = "Debe ingresar Contraseña Usuario";
                txtContraseña.Focus();
                return;
            }

            lblMensaje.Text = CADUsuario.CADUsu.ActualizarUsuario(txtNombre.Text, txtApellido.Text, txtCorreo.Text, txtContraseña.Text,Convert.ToInt16(txtIDUsuario.Text));
            GVUsuario.DataBind();


        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = CADUsuario.CADUsu.BorrarUsuario(Convert.ToInt16(txtIDUsuario.Text));

            txtIDUsuario.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtCorreo.Text = "";
            txtContraseña.Text = "";

            GVUsuario.DataBind();
        }
    }
}