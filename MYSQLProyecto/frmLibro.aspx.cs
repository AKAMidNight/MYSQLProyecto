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
    public partial class frmLibro : System.Web.UI.Page
    {
        //cadena de conexion
        private static string cadena = ConfigurationManager.ConnectionStrings["Cadena"].ConnectionString;
        private static MySqlConnection conexion = new MySqlConnection(cadena);

        private CapaNegocio.Libro l = new CapaNegocio.Libro();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvLibro.DataSource = l.Listar();
            gvLibro.DataBind();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            l.Agregar(txtCodLibro.Text, txtTitulo.Text, txtEditorial.Text);
            gvLibro.DataSource = l.Listar();
            gvLibro.DataBind();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            l.Eliminar(txtCodLibro.Text);
            gvLibro.DataSource = l.Listar();
            gvLibro.DataBind();
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            l.Actualizar(txtCodLibro.Text, txtTitulo.Text, txtEditorial.Text);
            gvLibro.DataSource = l.Listar();
            gvLibro.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            gvLibro.DataSource = l.Buscar(txtCodLibro.Text); ;
            gvLibro.DataBind();
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}