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
    public partial class frmPrestamo : System.Web.UI.Page
    {
        //cadena de conexion
        private static string cadena = ConfigurationManager.ConnectionStrings["Cadena"].ConnectionString;
        private static MySqlConnection conexion = new MySqlConnection(cadena);

        private CapaNegocio.Prestamo p = new CapaNegocio.Prestamo();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvPrestamo.DataSource = p.Listar();
            gvPrestamo.DataBind();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            p.Agregar(txtCodAutor.Text, txtCodLibro.Text, txtFechaPrestamo.Text);
            gvPrestamo.DataSource = p.Listar();
            gvPrestamo.DataBind();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            p.Eliminar(txtCodAutor.Text, txtCodLibro.Text, txtFechaPrestamo.Text);
            gvPrestamo.DataSource = p.Listar();
            gvPrestamo.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            gvPrestamo.DataSource = p.BuscarLibro(txtCodLibro.Text); ;
            gvPrestamo.DataBind();
        }

        protected void btnBuscar2_Click(object sender, EventArgs e)
        {
            gvPrestamo.DataSource = p.BuscarAutor(txtCodLibro.Text); ;
            gvPrestamo.DataBind();
        }
        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        
    }
}