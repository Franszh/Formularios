using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Formularios
{
    public partial class Formulario1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookieContraseña = new HttpCookie("Contraseña",TextBox4.Text);
            HttpCookie cookieUsuario = new HttpCookie("NombreUsuario",TextBox2.Text);
            Response.Cookies.Add(cookieContraseña);
            Response.Cookies.Add(cookieUsuario);
            TextBox1.Text = String.Empty;
            TextBox2.Text = String.Empty;
            TextBox3.Text = String.Empty;
            TextBox4.Text = String.Empty;
            TextBox5.Text = String.Empty;
        }
    }
}