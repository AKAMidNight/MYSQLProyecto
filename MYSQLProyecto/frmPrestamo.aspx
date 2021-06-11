<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmPrestamo.aspx.cs" Inherits="MYSQLProyecto.frmPrestamo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Prestamos</h1>
            <p>CodAutor: <asp:TextBox  runat="server" Id="txtCodAutor"/> </p>
            <p>CodLibro: <asp:TextBox  runat="server" Id="txtCodLibro"/> </p>
            <p>FechaPrestamo: <asp:TextBox  runat="server" Id="txtFechaPrestamo"/> </p>
            <p>
                <asp:Button Text="Agregar" runat="server" Id="btnAgregar" OnClick="btnAgregar_Click"  />
                <asp:Button Text="Eliminar" runat="server" Id="btnEliminar" OnClick="btnEliminar_Click"   />
                <asp:Button Text="Buscar Libro" runat="server" Id="btnBuscar" OnClick="btnBuscar_Click"  />
                <asp:Button Text="Buscar Autor" runat="server" Id="btnBuscar2" OnClick="btnBuscar2_Click"   />
                <asp:Button Text="Volver" runat="server" Id="btnVolver" OnClick="btnVolver_Click"  />
            </p>
            <asp:GridView runat="server" ID="gvPrestamo">

            </asp:GridView>
        </div>
    </form>
</body>
</html>
