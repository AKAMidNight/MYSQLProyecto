<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLibro.aspx.cs" Inherits="MYSQLProyecto.frmLibro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Libros</h1>
            <p>CodLibro: <asp:TextBox  runat="server" Id="txtCodLibro"/> </p>
            <p>Titulo: <asp:TextBox  runat="server" Id="txtTitulo"/> </p>
            <p>Editorial: <asp:TextBox  runat="server" Id="txtEditorial"/> </p>
            <p>
                <asp:Button Text="Agregar" runat="server" Id="btnAgregar" OnClick="btnAgregar_Click" />
                <asp:Button Text="Eliminar" runat="server" Id="btnEliminar" OnClick="btnEliminar_Click"  />
                <asp:Button Text="Actualizar" runat="server" Id="btnActualizar" OnClick="btnActualizar_Click" style="height: 26px"   />
                <asp:Button Text="Buscar" runat="server" Id="btnBuscar" OnClick="btnBuscar_Click"  />
                <asp:Button Text="Volver" runat="server" Id="btnVolver" OnClick="btnVolver_Click"  />
            </p>
            <asp:GridView runat="server" ID="gvLibro">

            </asp:GridView>
        </div>
    </form>
</body>
</html>
