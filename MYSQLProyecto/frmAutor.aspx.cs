using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
using MYSQLProyecto;

namespace MYSQLProyecto
{
    public partial class frmAutor : System.Web.UI.Page
    {
        //cadena de conexion
        private static string cadena = ConfigurationManager.ConnectionStrings["Cadena"].ConnectionString;
        private static MySqlConnection conexion = new MySqlConnection(cadena);

        private CapaNegocio.Autor a = new CapaNegocio.Autor();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvAutor.DataSource = a.Listar();
            gvAutor.DataBind();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            a.Agregar(txtCodAutor.Text, txtApellidos.Text, txtNombres.Text, txtNacionalidad.Text);
            gvAutor.DataSource = a.Listar();
            gvAutor.DataBind();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            a.Eliminar(txtCodAutor.Text);
            gvAutor.DataSource = a.Listar();
            gvAutor.DataBind();
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            a.Actualizar(txtCodAutor.Text, txtApellidos.Text, txtNombres.Text, txtNacionalidad.Text);
            gvAutor.DataSource = a.Listar();
            gvAutor.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            gvAutor.DataSource = a.Buscar(txtCodAutor.Text); ;
            gvAutor.DataBind();
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}