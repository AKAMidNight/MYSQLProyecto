<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAutor.aspx.cs" Inherits="MYSQLProyecto.frmAutor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Autores</h1>
            <p>CodAutor: <asp:TextBox  runat="server" Id="txtCodAutor"/> </p>
            <p>Apellidos: <asp:TextBox  runat="server" Id="txtApellidos"/> </p>
            <p>Nombres: <asp:TextBox  runat="server" Id="txtNombres"/> </p>
            <p>Nacionalidad: <asp:TextBox  runat="server" Id="txtNacionalidad"/> </p>
            <p>
                <asp:Button Text="Agregar" runat="server" Id="btnAgregar" OnClick="btnAgregar_Click"  />
                <asp:Button Text="Eliminar" runat="server" Id="btnEliminar" OnClick="btnEliminar_Click"  />
                <asp:Button Text="Actualizar" runat="server" Id="btnActualizar" OnClick="btnActualizar_Click"  />
                <asp:Button Text="Buscar" runat="server" Id="btnBuscar" OnClick="btnBuscar_Click" />
                <asp:Button Text="Volver" runat="server" Id="btnVolver" OnClick="btnVolver_Click" />
            </p>
            <asp:GridView runat="server" ID="gvAutor">

            </asp:GridView>
        </div>
    </form>
</body>
</html>
